.class public final Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;
.super Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
.source "DataReaderTiled.java"


# instance fields
.field private final bitsPerPixel:I

.field private final compression:I

.field private final height:I

.field private final imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

.field private final tileLength:I

.field private final tileWidth:I

.field private final width:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIILorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;)V
    .locals 0
    .param p1, "photometricInterpreter"    # Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .param p2, "tileWidth"    # I
    .param p3, "tileLength"    # I
    .param p4, "bitsPerPixel"    # I
    .param p5, "bitsPerSample"    # [I
    .param p6, "predictor"    # I
    .param p7, "samplesPerPixel"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "compression"    # I
    .param p11, "imageData"    # Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    .prologue
    .line 47
    invoke-direct {p0, p1, p5, p6, p7}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;[III)V

    .line 49
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    .line 50
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    .line 52
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    .line 53
    iput p8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->width:I

    .line 54
    iput p9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->height:I

    .line 55
    iput p10, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->compression:I

    .line 57
    iput-object p11, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    .line 58
    return-void
.end method

.method private interpretTile(Ljava/awt/image/BufferedImage;[BII)V
    .locals 11
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "bytes"    # [B
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lorg/apache/sanselan/common/BitInputStream;

    invoke-direct {v1, v0}, Lorg/apache/sanselan/common/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v1, "bis":Lorg/apache/sanselan/common/BitInputStream;
    iget v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v10, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v3, v9, v10

    .line 68
    .local v3, "pixelsPerTile":I
    const/4 v5, 0x0

    .local v5, "tileX":I
    const/4 v6, 0x0

    .line 70
    .local v6, "tileY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 73
    add-int v7, v5, p3

    .line 74
    .local v7, "x":I
    add-int v8, v6, p4

    .line 76
    .local v8, "y":I
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->getSamplesAsBytes(Lorg/apache/sanselan/common/BitInputStream;)[I

    move-result-object v4

    .line 78
    .local v4, "samples":[I
    iget v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->width:I

    if-ge v7, v9, :cond_0

    iget v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->height:I

    if-ge v8, v9, :cond_0

    .line 80
    invoke-virtual {p0, v4, v7}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->applyPredictor([II)[I

    move-result-object v4

    .line 81
    iget-object v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    invoke-virtual {v9, p1, v4, v7, v8}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Ljava/awt/image/BufferedImage;[III)V

    .line 84
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 86
    iget v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    if-lt v5, v9, :cond_2

    .line 88
    const/4 v5, 0x0

    .line 89
    add-int/lit8 v6, v6, 0x1

    .line 90
    invoke-virtual {v1}, Lorg/apache/sanselan/common/BitInputStream;->flushCache()V

    .line 91
    iget v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    if-lt v6, v9, :cond_2

    .line 96
    .end local v4    # "samples":[I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    return-void

    .line 70
    .restart local v4    # "samples":[I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public readImageData(Ljava/awt/image/BufferedImage;)V
    .locals 10
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iget v9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    mul-int v0, v8, v9

    .line 102
    .local v0, "bitsPerRow":I
    add-int/lit8 v8, v0, 0x7

    div-int/lit8 v1, v8, 0x8

    .line 103
    .local v1, "bytesPerRow":I
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v2, v1, v8

    .line 104
    .local v2, "bytesPerTile":I
    const/4 v6, 0x0

    .local v6, "x":I
    const/4 v7, 0x0

    .line 106
    .local v7, "y":I
    const/4 v5, 0x0

    .local v5, "tile":I
    :goto_0
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    iget-object v8, v8, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    array-length v8, v8

    if-ge v5, v8, :cond_0

    .line 108
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;

    iget-object v8, v8, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    aget-object v8, v8, v5

    iget-object v3, v8, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->data:[B

    .line 110
    .local v3, "compressed":[B
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->compression:I

    invoke-virtual {p0, v3, v8, v2}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->decompress([BII)[B

    move-result-object v4

    .line 113
    .local v4, "decompressed":[B
    invoke-direct {p0, p1, v4, v6, v7}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->interpretTile(Ljava/awt/image/BufferedImage;[BII)V

    .line 115
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int/2addr v6, v8

    .line 116
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->width:I

    if-lt v6, v8, :cond_1

    .line 118
    const/4 v6, 0x0

    .line 119
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    add-int/2addr v7, v8

    .line 120
    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;->height:I

    if-lt v7, v8, :cond_1

    .line 125
    .end local v3    # "compressed":[B
    .end local v4    # "decompressed":[B
    :cond_0
    return-void

    .line 106
    .restart local v3    # "compressed":[B
    .restart local v4    # "decompressed":[B
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
