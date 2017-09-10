.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterBiLevel.java"


# instance fields
.field private final invert:Z


# direct methods
.method public constructor <init>(II[IIIIZ)V
    .locals 6
    .param p1, "fBitsPerPixel"    # I
    .param p2, "fSamplesPerPixel"    # I
    .param p3, "fBitsPerSample"    # [I
    .param p4, "Predictor"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "invert"    # Z

    .prologue
    .line 34
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 36
    iput-boolean p7, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    .line 38
    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 8
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
    .line 43
    const/4 v6, 0x0

    aget v5, p2, v6

    .line 45
    .local v5, "sample":I
    iget-boolean v6, p0, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    if-eqz v6, :cond_0

    .line 46
    rsub-int v5, v5, 0xff

    .line 48
    :cond_0
    move v3, v5

    .line 49
    .local v3, "red":I
    move v2, v5

    .line 50
    .local v2, "green":I
    move v1, v5

    .line 52
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 53
    .local v0, "alpha":I
    const/high16 v6, -0x1000000

    shl-int/lit8 v7, v3, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v2, 0x8

    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x0

    or-int v4, v6, v7

    .line 55
    .local v4, "rgb":I
    invoke-virtual {p1, p3, p4, v4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 56
    return-void
.end method
