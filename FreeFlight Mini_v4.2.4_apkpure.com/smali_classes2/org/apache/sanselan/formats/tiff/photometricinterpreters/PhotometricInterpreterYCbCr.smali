.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterYCbCr.java"


# direct methods
.method public constructor <init>([D[I[I[DI[IIII)V
    .locals 6
    .param p1, "fYCbCrCoefficients"    # [D
    .param p2, "fYCbCrPositioning"    # [I
    .param p3, "fYCbCrSubSampling"    # [I
    .param p4, "fReferenceBlackWhite"    # [D
    .param p5, "fSamplesPerPixel"    # I
    .param p6, "fBitsPerSample"    # [I
    .param p7, "Predictor"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 32
    move-object v0, p0

    move v1, p5

    move-object v2, p6

    move v3, p7

    move v4, p8

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 33
    return-void
.end method


# virtual methods
.method public convertYCbCrtoRGB(III)I
    .locals 22
    .param p1, "Y"    # I
    .param p2, "Cb"    # I
    .param p3, "Cr"    # I

    .prologue
    .line 54
    const-wide v14, 0x3ff29fbe76c8b439L    # 1.164

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3ff989374bc6a7f0L    # 1.596

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v10, v14, v16

    .line 55
    .local v10, "r1":D
    const-wide v14, 0x3ff29fbe76c8b439L    # 1.164

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3fea04189374bc6aL    # 0.813

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide v16, 0x3fd916872b020c4aL    # 0.392

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double v8, v14, v16

    .line 57
    .local v8, "g1":D
    const-wide v14, 0x3ff29fbe76c8b439L    # 1.164

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x400022d0e5604189L    # 2.017

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v4, v14, v16

    .line 59
    .local v4, "b1":D
    double-to-int v13, v10

    const/4 v14, 0x0

    const/16 v15, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v7

    .line 60
    .local v7, "r":I
    double-to-int v13, v8

    const/4 v14, 0x0

    const/16 v15, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v6

    .line 61
    .local v6, "g":I
    double-to-int v13, v4

    const/4 v14, 0x0

    const/16 v15, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v3

    .line 63
    .local v3, "b":I
    const/16 v2, 0xff

    .line 64
    .local v2, "alpha":I
    const/high16 v13, -0x1000000

    shl-int/lit8 v14, v7, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v6, 0x8

    or-int/2addr v13, v14

    shl-int/lit8 v14, v3, 0x0

    or-int v12, v13, v14

    .line 65
    .local v12, "rgb":I
    return v12
.end method

.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 26
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
    .line 71
    const/16 v18, 0x0

    aget v12, p2, v18

    .line 72
    .local v12, "Y":I
    const/16 v18, 0x1

    aget v6, p2, v18

    .line 73
    .local v6, "Cb":I
    const/16 v18, 0x2

    aget v7, p2, v18

    .line 74
    .local v7, "Cr":I
    int-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff66e978d4fdf3bL    # 1.402

    int-to-double v0, v7

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v10, v18, v20

    .line 75
    .local v10, "R":D
    int-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd60663c74fb54aL    # 0.34414

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    int-to-double v0, v7

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    sub-double v8, v18, v20

    .line 76
    .local v8, "G":D
    int-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3ffc5a1cac083127L    # 1.772

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v4, v18, v20

    .line 78
    .local v4, "B":D
    double-to-int v0, v10

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v16

    .line 79
    .local v16, "red":I
    double-to-int v0, v8

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v15

    .line 80
    .local v15, "green":I
    double-to-int v0, v4

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v14

    .line 82
    .local v14, "blue":I
    const/16 v13, 0xff

    .line 83
    .local v13, "alpha":I
    const/high16 v18, -0x1000000

    shl-int/lit8 v19, v16, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v15, 0x8

    or-int v18, v18, v19

    shl-int/lit8 v19, v14, 0x0

    or-int v17, v18, v19

    .line 84
    .local v17, "rgb":I
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 86
    return-void
.end method

.method public limit(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 37
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
