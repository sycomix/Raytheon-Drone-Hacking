.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterCIELAB;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCIELAB.java"


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
.method public dumpstats()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 5
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
    .line 40
    const/4 v4, 0x0

    aget v2, p2, v4

    .line 41
    .local v2, "cieL":I
    const/4 v4, 0x1

    aget v4, p2, v4

    int-to-byte v0, v4

    .line 42
    .local v0, "cieA":I
    const/4 v4, 0x2

    aget v4, p2, v4

    int-to-byte v1, v4

    .line 44
    .local v1, "cieB":I
    invoke-static {v2, v0, v1}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoARGBTest(III)I

    move-result v3

    .line 45
    .local v3, "rgb":I
    invoke-virtual {p1, p3, p4, v3}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 46
    return-void
.end method
