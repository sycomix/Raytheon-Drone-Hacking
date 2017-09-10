.class public Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;
.super Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
.source "TiffImageWriterLossy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;-><init>(I)V

    .line 36
    return-void
.end method

.method private updateOffsetsStep(Ljava/util/List;)V
    .locals 6
    .param p1, "outputItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 57
    const/16 v2, 0x8

    .line 59
    .local v2, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .line 63
    .local v3, "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    invoke-virtual {v3, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->setOffset(I)V

    .line 64
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v1

    .line 65
    .local v1, "itemLength":I
    add-int/2addr v2, v1

    .line 67
    invoke-static {v1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->imageDataPaddingLength(I)I

    move-result v4

    .line 68
    .local v4, "remainder":I
    add-int/2addr v2, v4

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "itemLength":I
    .end local v3    # "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    .end local v4    # "remainder":I
    :cond_0
    return-void
.end method

.method private writeStep(Lorg/apache/sanselan/common/BinaryOutputStream;Ljava/util/List;)V
    .locals 6
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .param p2, "outputItems"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;)V

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 79
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .line 81
    .local v3, "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    invoke-virtual {v3, p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->writeItem(Lorg/apache/sanselan/common/BinaryOutputStream;)V

    .line 83
    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v2

    .line 85
    .local v2, "length":I
    invoke-static {v2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->imageDataPaddingLength(I)I

    move-result v4

    .line 86
    .local v4, "remainder":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 87
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "j":I
    .end local v2    # "length":I
    .end local v3    # "outputItem":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    .end local v4    # "remainder":I
    :cond_1
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->validateDirectories(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;

    move-result-object v2

    .line 43
    .local v2, "outputSummary":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    invoke-virtual {p2, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getOutputItems(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "outputItems":Ljava/util/List;
    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->updateOffsetsStep(Ljava/util/List;)V

    .line 47
    iget v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->byteOrder:I

    invoke-virtual {v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->updateOffsets(I)V

    .line 49
    new-instance v0, Lorg/apache/sanselan/common/BinaryOutputStream;

    iget v3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->byteOrder:I

    invoke-direct {v0, p1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 51
    .local v0, "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;->writeStep(Lorg/apache/sanselan/common/BinaryOutputStream;Ljava/util/List;)V

    .line 52
    return-void
.end method
