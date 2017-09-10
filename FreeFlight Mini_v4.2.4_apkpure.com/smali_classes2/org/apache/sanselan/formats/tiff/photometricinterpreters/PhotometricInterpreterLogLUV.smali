.class public Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;
.super Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterLogLUV.java"


# direct methods
.method public constructor <init>(I[IIIIZ)V
    .locals 0
    .param p1, "fSamplesPerPixel"    # I
    .param p2, "fBitsPerSample"    # [I
    .param p3, "Predictor"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "yonly"    # Z

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    .line 35
    return-void
.end method

.method private cube(F)F
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 43
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
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
    .line 39
    return-void
.end method

.method public interpretPixel(Ljava/awt/image/BufferedImage;[III)V
    .locals 36
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
    .line 53
    const/16 v30, 0x0

    aget v14, p2, v30

    .line 54
    .local v14, "cieL":I
    const/16 v30, 0x1

    aget v30, p2, v30

    move/from16 v0, v30

    int-to-byte v12, v0

    .line 55
    .local v12, "cieA":I
    const/16 v30, 0x2

    aget v30, p2, v30

    move/from16 v0, v30

    int-to-byte v13, v0

    .line 59
    .local v13, "cieB":I
    int-to-float v0, v14

    move/from16 v30, v0

    const/high16 v31, 0x42c80000    # 100.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x437f0000    # 255.0f

    div-float v30, v30, v31

    const/high16 v31, 0x41800000    # 16.0f

    add-float v30, v30, v31

    const/high16 v31, 0x42e80000    # 116.0f

    div-float v25, v30, v31

    .line 60
    .local v25, "var_Y":F
    int-to-float v0, v12

    move/from16 v30, v0

    const/high16 v31, 0x43fa0000    # 500.0f

    div-float v30, v30, v31

    add-float v24, v30, v25

    .line 61
    .local v24, "var_X":F
    int-to-float v0, v13

    move/from16 v30, v0

    const/high16 v31, 0x43480000    # 200.0f

    div-float v30, v30, v31

    sub-float v26, v25, v30

    .line 63
    .local v26, "var_Z":F
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;->cube(F)F

    move-result v27

    .line 64
    .local v27, "var_x_cube":F
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;->cube(F)F

    move-result v28

    .line 65
    .local v28, "var_y_cube":F
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLUV;->cube(F)F

    move-result v29

    .line 67
    .local v29, "var_z_cube":F
    const v30, 0x3c1118c2    # 0.008856f

    cmpl-float v30, v28, v30

    if-lez v30, :cond_0

    .line 68
    move/from16 v25, v28

    .line 72
    :goto_0
    const v30, 0x3c1118c2    # 0.008856f

    cmpl-float v30, v27, v30

    if-lez v30, :cond_1

    .line 73
    move/from16 v24, v27

    .line 77
    :goto_1
    const v30, 0x3c1118c2    # 0.008856f

    cmpl-float v30, v29, v30

    if-lez v30, :cond_2

    .line 78
    move/from16 v26, v29

    .line 82
    :goto_2
    const v17, 0x42be1810

    .line 83
    .local v17, "ref_X":F
    const/high16 v18, 0x42c80000    # 100.0f

    .line 84
    .local v18, "ref_Y":F
    const v19, 0x42d9c419

    .line 86
    .local v19, "ref_Z":F
    mul-float v7, v17, v24

    .line 87
    .local v7, "X":F
    mul-float v8, v18, v25

    .line 88
    .local v8, "Y":F
    mul-float v9, v19, v26

    .line 98
    .local v9, "Z":F
    const/high16 v30, 0x42c80000    # 100.0f

    div-float v24, v7, v30

    .line 99
    const/high16 v30, 0x42c80000    # 100.0f

    div-float v25, v8, v30

    .line 100
    const/high16 v30, 0x42c80000    # 100.0f

    div-float v26, v9, v30

    .line 102
    const v30, 0x404f65fe

    mul-float v30, v30, v24

    const v31, -0x403b3d08    # -1.5372f

    mul-float v31, v31, v25

    add-float v30, v30, v31

    const v31, -0x4100b780    # -0.4986f

    mul-float v31, v31, v26

    add-float v23, v30, v31

    .line 103
    .local v23, "var_R":F
    const v30, -0x4087f62b    # -0.9689f

    mul-float v30, v30, v24

    const v31, 0x3ff01a37    # 1.8758f

    mul-float v31, v31, v25

    add-float v30, v30, v31

    const v31, 0x3d29fbe7    # 0.0415f

    mul-float v31, v31, v26

    add-float v22, v30, v31

    .line 104
    .local v22, "var_G":F
    const v30, 0x3d6425af    # 0.0557f

    mul-float v30, v30, v24

    const v31, -0x41af1aa0    # -0.204f

    mul-float v31, v31, v25

    add-float v30, v30, v31

    const v31, 0x3f874bc7    # 1.057f

    mul-float v31, v31, v26

    add-float v21, v30, v31

    .line 106
    .local v21, "var_B":F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v30, v30, v32

    if-lez v30, :cond_3

    .line 107
    const v30, 0x3f870a3d    # 1.055f

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const v31, 0x3d6147ae    # 0.055f

    sub-float v23, v30, v31

    .line 110
    :goto_3
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v30, v30, v32

    if-lez v30, :cond_4

    .line 111
    const v30, 0x3f870a3d    # 1.055f

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const v31, 0x3d6147ae    # 0.055f

    sub-float v22, v30, v31

    .line 115
    :goto_4
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v30, v30, v32

    if-lez v30, :cond_5

    .line 116
    const v30, 0x3f870a3d    # 1.055f

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const v31, 0x3d6147ae    # 0.055f

    sub-float v21, v30, v31

    .line 129
    :goto_5
    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v30, v30, v23

    move/from16 v0, v30

    float-to-int v6, v0

    .line 130
    .local v6, "R":I
    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v30, v30, v22

    move/from16 v0, v30

    float-to-int v5, v0

    .line 131
    .local v5, "G":I
    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v30, v30, v21

    move/from16 v0, v30

    float-to-int v4, v0

    .line 142
    .local v4, "B":I
    move/from16 v16, v6

    .line 143
    .local v16, "red":I
    move v15, v5

    .line 144
    .local v15, "green":I
    move v11, v4

    .line 146
    .local v11, "blue":I
    const/16 v30, 0xff

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 147
    const/16 v30, 0xff

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 148
    const/16 v30, 0xff

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 149
    const/16 v10, 0xff

    .line 150
    .local v10, "alpha":I
    const/high16 v30, -0x1000000

    shl-int/lit8 v31, v16, 0x10

    or-int v30, v30, v31

    shl-int/lit8 v31, v15, 0x8

    or-int v30, v30, v31

    shl-int/lit8 v31, v11, 0x0

    or-int v20, v30, v31

    .line 151
    .local v20, "rgb":I
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    .line 153
    return-void

    .line 70
    .end local v4    # "B":I
    .end local v5    # "G":I
    .end local v6    # "R":I
    .end local v7    # "X":F
    .end local v8    # "Y":F
    .end local v9    # "Z":F
    .end local v10    # "alpha":I
    .end local v11    # "blue":I
    .end local v15    # "green":I
    .end local v16    # "red":I
    .end local v17    # "ref_X":F
    .end local v18    # "ref_Y":F
    .end local v19    # "ref_Z":F
    .end local v20    # "rgb":I
    .end local v21    # "var_B":F
    .end local v22    # "var_G":F
    .end local v23    # "var_R":F
    :cond_0
    const v30, 0x3e0d3dcb

    sub-float v30, v25, v30

    const v31, 0x40f92f1b    # 7.787f

    div-float v25, v30, v31

    goto/16 :goto_0

    .line 75
    :cond_1
    const v30, 0x3e0d3dcb

    sub-float v30, v24, v30

    const v31, 0x40f92f1b    # 7.787f

    div-float v24, v30, v31

    goto/16 :goto_1

    .line 80
    :cond_2
    const v30, 0x3e0d3dcb

    sub-float v30, v26, v30

    const v31, 0x40f92f1b    # 7.787f

    div-float v26, v30, v31

    goto/16 :goto_2

    .line 109
    .restart local v7    # "X":F
    .restart local v8    # "Y":F
    .restart local v9    # "Z":F
    .restart local v17    # "ref_X":F
    .restart local v18    # "ref_Y":F
    .restart local v19    # "ref_Z":F
    .restart local v21    # "var_B":F
    .restart local v22    # "var_G":F
    .restart local v23    # "var_R":F
    :cond_3
    const v30, 0x414eb852    # 12.92f

    mul-float v23, v23, v30

    goto/16 :goto_3

    .line 113
    :cond_4
    const v30, 0x414eb852    # 12.92f

    mul-float v22, v22, v30

    goto/16 :goto_4

    .line 118
    :cond_5
    const v30, 0x414eb852    # 12.92f

    mul-float v21, v21, v30

    goto/16 :goto_5
.end method
