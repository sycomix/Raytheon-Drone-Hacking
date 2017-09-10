.class public Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;
.super Lorg/apache/sanselan/formats/png/ScanExpediter;
.source "ScanExpediterInterlaced.java"


# static fields
.field public static final Block_Height:[I

.field public static final Block_Width:[I

.field public static final Col_Increment:[I

.field public static final Row_Increment:[I

.field public static final Starting_Col:[I

.field public static final Starting_Row:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Row:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Col:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Row_Increment:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Col_Increment:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Block_Height:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Block_Width:[I

    return-void

    .line 57
    :array_0
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    .line 63
    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
    .end array-data

    .line 66
    :array_3
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    .line 69
    :array_4
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data

    .line 72
    :array_5
    .array-data 4
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "bi"    # Ljava/awt/image/BufferedImage;
    .param p5, "color_type"    # I
    .param p6, "BitDepth"    # I
    .param p7, "bits_per_pixel"    # I
    .param p8, "fPNGChunkPLTE"    # Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    .param p9, "fGammaCorrection"    # Lorg/apache/sanselan/formats/png/GammaCorrection;
    .param p10, "fTransparencyFilter"    # Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p10}, Lorg/apache/sanselan/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    .line 37
    return-void
.end method

.method private visit(IILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/png/BitParser;IILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bi"    # Ljava/awt/image/BufferedImage;
    .param p4, "fBitParser"    # Lorg/apache/sanselan/formats/png/BitParser;
    .param p5, "color_type"    # I
    .param p6, "pixel_index_in_scanline"    # I
    .param p7, "fPNGChunkPLTE"    # Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    .param p8, "fGammaCorrection"    # Lorg/apache/sanselan/formats/png/GammaCorrection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p4, p6}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->getRGB(Lorg/apache/sanselan/formats/png/BitParser;I)I

    move-result v0

    .line 51
    .local v0, "rgb":I
    invoke-virtual {p3, p1, p2, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 55
    return-void
.end method


# virtual methods
.method public drive()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v12, 0x1

    .line 80
    .local v12, "pass":I
    :goto_0
    const/4 v1, 0x7

    if-gt v12, v1, :cond_3

    .line 82
    const/4 v14, 0x0

    .line 84
    .local v14, "prev":[B
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Row:[I

    add-int/lit8 v4, v12, -0x1

    aget v3, v1, v4

    .line 86
    .local v3, "y":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->height:I

    if-ge v3, v1, :cond_0

    const/4 v15, 0x1

    .line 87
    .local v15, "rows_in_pass":Z
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->height:I

    if-ge v3, v1, :cond_2

    .line 89
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Col:[I

    add-int/lit8 v4, v12, -0x1

    aget v2, v1, v4

    .line 90
    .local v2, "x":I
    const/4 v7, 0x0

    .line 92
    .local v7, "pixel_index_in_scanline":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v2, v1, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->width:I

    sget-object v4, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Starting_Col:[I

    add-int/lit8 v6, v12, -0x1

    aget v4, v4, v6

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Col_Increment:[I

    add-int/lit8 v6, v12, -0x1

    aget v4, v4, v6

    div-int/2addr v1, v4

    add-int/lit8 v10, v1, 0x1

    .line 96
    .local v10, "ColumnsInRow":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    mul-int v11, v1, v10

    .line 97
    .local v11, "bitsPerScanLine":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->getBitsToBytesRoundingUp(I)I

    move-result v13

    .line 99
    .local v13, "pixel_bytes_per_scan_line":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->is:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bytesPerPixel:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13, v14, v4}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v16

    .line 102
    .local v16, "unfiltered":[B
    move-object/from16 v14, v16

    .line 104
    new-instance v5, Lorg/apache/sanselan/formats/png/BitParser;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bitDepth:I

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v1, v4}, Lorg/apache/sanselan/formats/png/BitParser;-><init>([BII)V

    .line 107
    .local v5, "fBitParser":Lorg/apache/sanselan/formats/png/BitParser;
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v2, v1, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->bi:Ljava/awt/image/BufferedImage;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->colorType:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->pngChunkPLTE:Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->gammaCorrection:Lorg/apache/sanselan/formats/png/GammaCorrection;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->visit(IILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/png/BitParser;IILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;)V

    .line 113
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Col_Increment:[I

    add-int/lit8 v4, v12, -0x1

    aget v1, v1, v4

    add-int/2addr v2, v1

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 86
    .end local v2    # "x":I
    .end local v5    # "fBitParser":Lorg/apache/sanselan/formats/png/BitParser;
    .end local v7    # "pixel_index_in_scanline":I
    .end local v10    # "ColumnsInRow":I
    .end local v11    # "bitsPerScanLine":I
    .end local v13    # "pixel_bytes_per_scan_line":I
    .end local v15    # "rows_in_pass":Z
    .end local v16    # "unfiltered":[B
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 117
    .restart local v2    # "x":I
    .restart local v7    # "pixel_index_in_scanline":I
    .restart local v15    # "rows_in_pass":Z
    :cond_1
    sget-object v1, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;->Row_Increment:[I

    add-int/lit8 v4, v12, -0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    .line 118
    goto/16 :goto_1

    .line 119
    .end local v2    # "x":I
    .end local v7    # "pixel_index_in_scanline":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 120
    goto/16 :goto_0

    .line 121
    .end local v3    # "y":I
    .end local v14    # "prev":[B
    .end local v15    # "rows_in_pass":Z
    :cond_3
    return-void
.end method
