.class public final Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;
.super Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
.source "DataReaderStrips.java"


# instance fields
.field private final bitsPerPixel:I

.field private final compression:I

.field private final height:I

.field private final imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

.field private final rowsPerStrip:I

.field private final width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIIILorg/apache/sanselan/formats/tiff/TiffImageData$Strips;)V
    .locals 1
    .param p1, "photometricInterpreter"    # Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .param p2, "bitsPerPixel"    # I
    .param p3, "bitsPerSample"    # [I
    .param p4, "predictor"    # I
    .param p5, "samplesPerPixel"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "compression"    # I
    .param p9, "rowsPerStrip"    # I
    .param p10, "imageData"    # Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;[III)V

    .line 82
    iput v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 45
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    .line 46
    iput p6, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    .line 47
    iput p7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    .line 48
    iput p8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->compression:I

    .line 49
    iput p9, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    .line 50
    iput-object p10, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    .line 51
    return-void
.end method

.method private interpretStrip(Ljava/awt/image/BufferedImage;[BI)V
    .locals 7
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "bytes"    # [B
    .param p3, "pixels_per_strip"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 57
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Lorg/apache/sanselan/common/BitInputStream;

    invoke-direct {v1, v0}, Lorg/apache/sanselan/common/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v1, "bis":Lorg/apache/sanselan/common/BitInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->getSamplesAsBytes(Lorg/apache/sanselan/common/BitInputStream;)[I

    move-result-object v3

    .line 63
    .local v3, "samples":[I
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v4, v5, :cond_0

    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    if-ge v4, v5, :cond_0

    .line 65
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    invoke-virtual {p0, v3, v4}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->applyPredictor([II)[I

    move-result-object v3

    .line 67
    iget-object v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v6, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    invoke-virtual {v4, p1, v3, v5, v6}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Ljava/awt/image/BufferedImage;[III)V

    .line 70
    :cond_0
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 71
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-lt v4, v5, :cond_2

    .line 73
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->x:I

    .line 74
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    .line 75
    invoke-virtual {v1}, Lorg/apache/sanselan/common/BitInputStream;->flushCache()V

    .line 76
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->y:I

    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    if-lt v4, v5, :cond_2

    .line 80
    .end local v3    # "samples":[I
    :cond_1
    return-void

    .line 59
    .restart local v3    # "samples":[I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public readImageData(Ljava/awt/image/BufferedImage;)V
    .locals 9
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v6, 0x0

    .local v6, "strip":I
    :goto_0
    iget-object v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    iget-object v7, v7, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 89
    iget v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->height:I

    iget v8, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    mul-int/2addr v8, v6

    sub-int v5, v7, v8

    .line 90
    .local v5, "rowsRemaining":I
    iget v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 91
    .local v4, "rowsInThisStrip":I
    iget v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->width:I

    mul-int v3, v4, v7

    .line 92
    .local v3, "pixelsPerStrip":I
    iget v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v0, v7, 0x8

    .line 94
    .local v0, "bytesPerStrip":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    iget-object v7, v7, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    aget-object v7, v7, v6

    iget-object v1, v7, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->data:[B

    .line 96
    .local v1, "compressed":[B
    iget v7, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->compression:I

    invoke-virtual {p0, v1, v7, v0}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->decompress([BII)[B

    move-result-object v2

    .line 99
    .local v2, "decompressed":[B
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;->interpretStrip(Ljava/awt/image/BufferedImage;[BI)V

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "bytesPerStrip":I
    .end local v1    # "compressed":[B
    .end local v2    # "decompressed":[B
    .end local v3    # "pixelsPerStrip":I
    .end local v4    # "rowsInThisStrip":I
    .end local v5    # "rowsRemaining":I
    :cond_0
    return-void
.end method
