.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterRGB;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterRGB.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0
    .param p1, "fSamplesPerPixel"    # I
    .param p2, "fBitsPerSample"    # [I
    .param p3, "Predictor"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 30
    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 7
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
    .line 35
    const/4 v5, 0x0

    aget v3, p2, v5

    .line 36
    .local v3, "red":I
    const/4 v5, 0x1

    aget v2, p2, v5

    .line 37
    .local v2, "green":I
    const/4 v5, 0x2

    aget v1, p2, v5

    .line 39
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 40
    .local v0, "alpha":I
    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x0

    or-int v4, v5, v6

    .line 41
    .local v4, "rgb":I
    invoke-virtual {p1, p3, p4, v4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 43
    return-void
.end method
