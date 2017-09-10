.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCMYK;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCMYK.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0
    .param p1, "fSamplesPerPixel"    # I
    .param p2, "fBitsPerSample"    # [I
    .param p3, "Predictor"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 31
    return-void
.end method


# virtual methods
.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 6
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
    .line 37
    const/4 v5, 0x0

    aget v1, p2, v5

    .line 38
    .local v1, "sc":I
    const/4 v5, 0x1

    aget v3, p2, v5

    .line 39
    .local v3, "sm":I
    const/4 v5, 0x2

    aget v4, p2, v5

    .line 40
    .local v4, "sy":I
    const/4 v5, 0x3

    aget v2, p2, v5

    .line 42
    .local v2, "sk":I
    invoke-static {v1, v3, v4, v2}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v0

    .line 43
    .local v0, "rgb":I
    invoke-virtual {p1, p3, p4, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 44
    return-void
.end method
