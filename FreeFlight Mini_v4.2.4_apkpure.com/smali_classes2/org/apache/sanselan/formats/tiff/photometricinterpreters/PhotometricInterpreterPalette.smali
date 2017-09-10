.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterPalette.java"


# instance fields
.field private final fColorMap:[I


# direct methods
.method public constructor <init>(I[IIII[I)V
    .locals 0
    .param p1, "fSamplesPerPixel"    # I
    .param p2, "fBitsPerSample"    # [I
    .param p3, "Predictor"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "fColorMap"    # [I

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 34
    iput-object p6, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    .line 35
    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 10
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "samples"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 40
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->bitsPerSample:[I

    aget v3, v8, v9

    .line 41
    .local v3, "fBitsPerPixel":I
    const/4 v8, 0x1

    shl-int v2, v8, v3

    .line 44
    .local v2, "colormap_scale":I
    aget v5, p2, v9

    .line 45
    .local v5, "index":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    aget v8, v8, v5

    shr-int/lit8 v6, v8, 0x8

    .line 46
    .local v6, "red":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    add-int v9, v5, v2

    aget v8, v8, v9

    shr-int/lit8 v4, v8, 0x8

    .line 47
    .local v4, "green":I
    iget-object v8, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->fColorMap:[I

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v5

    aget v8, v8, v9

    shr-int/lit8 v1, v8, 0x8

    .line 49
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 50
    .local v0, "alpha":I
    const/high16 v8, -0x1000000

    shl-int/lit8 v9, v6, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v7, v8, v9

    .line 51
    .local v7, "rgb":I
    invoke-virtual {p1, p3, p4, v7}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 53
    return-void
.end method
