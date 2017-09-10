.class public abstract Lorg/apache/sanselan/color/ColorConversions;
.super Ljava/lang/Object;
.source "ColorConversions.java"


# static fields
.field private static final ref_X:D = 95.047

.field private static final ref_Y:D = 100.0

.field private static final ref_Z:D = 108.883


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCIELCHtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 8
    .param p0, "L"    # D
    .param p2, "C"    # D
    .param p4, "H"    # D

    .prologue
    .line 830
    invoke-static {p4, p5}, Lorg/apache/sanselan/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v4, v0, p2

    .line 831
    .local v4, "a":D
    invoke-static {p4, p5}, Lorg/apache/sanselan/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v6, v0, p2

    .line 833
    .local v6, "b":D
    new-instance v1, Lorg/apache/sanselan/color/ColorCIELab;

    move-wide v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorCIELab;-><init>(DDD)V

    return-object v1
.end method

.method public static convertCIELCHtoCIELab(Lorg/apache/sanselan/color/ColorCIELCH;)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 6
    .param p0, "cielch"    # Lorg/apache/sanselan/color/ColorCIELCH;

    .prologue
    .line 822
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELCH;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELCH;->C:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELCH;->H:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELCHtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object v0

    return-object v0
.end method

.method public static final convertCIELabtoARGBTest(III)I
    .locals 38
    .param p0, "cieL"    # I
    .param p1, "cieA"    # I
    .param p2, "cieB"    # I

    .prologue
    .line 706
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059000000000000L    # 100.0

    mul-double v34, v34, v36

    const-wide v36, 0x406fe00000000000L    # 255.0

    div-double v34, v34, v36

    const-wide/high16 v36, 0x4030000000000000L    # 16.0

    add-double v34, v34, v36

    const-wide/high16 v36, 0x405d000000000000L    # 116.0

    div-double v24, v34, v36

    .line 707
    .local v24, "var_Y":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x407f400000000000L    # 500.0

    div-double v34, v34, v36

    add-double v22, v34, v24

    .line 708
    .local v22, "var_X":D
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4069000000000000L    # 200.0

    div-double v34, v34, v36

    sub-double v26, v24, v34

    .line 710
    .local v26, "var_Z":D
    invoke-static/range {v22 .. v23}, Lorg/apache/sanselan/color/ColorConversions;->cube(D)D

    move-result-wide v28

    .line 711
    .local v28, "var_x_cube":D
    invoke-static/range {v24 .. v25}, Lorg/apache/sanselan/color/ColorConversions;->cube(D)D

    move-result-wide v30

    .line 712
    .local v30, "var_y_cube":D
    invoke-static/range {v26 .. v27}, Lorg/apache/sanselan/color/ColorConversions;->cube(D)D

    move-result-wide v32

    .line 714
    .local v32, "var_z_cube":D
    const-wide v34, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v34, v30, v34

    if-lez v34, :cond_0

    .line 715
    move-wide/from16 v24, v30

    .line 719
    :goto_0
    const-wide v34, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v34, v28, v34

    if-lez v34, :cond_1

    .line 720
    move-wide/from16 v22, v28

    .line 724
    :goto_1
    const-wide v34, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v34, v32, v34

    if-lez v34, :cond_2

    .line 725
    move-wide/from16 v26, v32

    .line 733
    :goto_2
    const-wide v34, 0x4057c3020c49ba5eL    # 95.047

    mul-double v10, v34, v22

    .line 734
    .local v10, "X":D
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    mul-double v12, v34, v24

    .line 735
    .local v12, "Y":D
    const-wide v34, 0x405b3883126e978dL    # 108.883

    mul-double v14, v34, v26

    .line 741
    .local v14, "Z":D
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v22, v10, v34

    .line 742
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v24, v12, v34

    .line 743
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    div-double v26, v14, v34

    .line 745
    const-wide v34, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v34, v34, v22

    const-wide v36, -0x400767a0f9096bbaL    # -1.5372

    mul-double v36, v36, v24

    add-double v34, v34, v36

    const-wide v36, -0x402016f0068db8bbL    # -0.4986

    mul-double v36, v36, v26

    add-double v20, v34, v36

    .line 746
    .local v20, "var_R":D
    const-wide v34, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v34, v34, v22

    const-wide v36, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v36, v36, v24

    add-double v34, v34, v36

    const-wide v36, 0x3fa53f7ced916873L    # 0.0415

    mul-double v36, v36, v26

    add-double v18, v34, v36

    .line 747
    .local v18, "var_G":D
    const-wide v34, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v34, v34, v22

    const-wide v36, -0x4035e353f7ced917L    # -0.204

    mul-double v36, v36, v24

    add-double v34, v34, v36

    const-wide v36, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v36, v36, v26

    add-double v16, v34, v36

    .line 749
    .local v16, "var_B":D
    const-wide v34, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v34, v20, v34

    if-lez v34, :cond_3

    .line 750
    const-wide v34, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v36, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-wide/from16 v0, v20

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    mul-double v34, v34, v36

    const-wide v36, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v20, v34, v36

    .line 753
    :goto_3
    const-wide v34, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v34, v18, v34

    if-lez v34, :cond_4

    .line 754
    const-wide v34, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v36, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-wide/from16 v0, v18

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    mul-double v34, v34, v36

    const-wide v36, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v18, v34, v36

    .line 758
    :goto_4
    const-wide v34, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v34, v16, v34

    if-lez v34, :cond_5

    .line 759
    const-wide v34, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v36, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-wide/from16 v0, v16

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    mul-double v34, v34, v36

    const-wide v36, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v16, v34, v36

    .line 763
    :goto_5
    const-wide v34, 0x406fe00000000000L    # 255.0

    mul-double v4, v20, v34

    .line 764
    .local v4, "R":D
    const-wide v34, 0x406fe00000000000L    # 255.0

    mul-double v6, v18, v34

    .line 765
    .local v6, "G":D
    const-wide v34, 0x406fe00000000000L    # 255.0

    mul-double v8, v16, v34

    .line 768
    .local v8, "B":D
    invoke-static/range {v4 .. v9}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v34

    return v34

    .line 717
    .end local v4    # "R":D
    .end local v6    # "G":D
    .end local v8    # "B":D
    .end local v10    # "X":D
    .end local v12    # "Y":D
    .end local v14    # "Z":D
    .end local v16    # "var_B":D
    .end local v18    # "var_G":D
    .end local v20    # "var_R":D
    :cond_0
    const-wide v34, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double v34, v24, v34

    const-wide v36, 0x401f25e353f7ced9L    # 7.787

    div-double v24, v34, v36

    goto/16 :goto_0

    .line 722
    :cond_1
    const-wide v34, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double v34, v22, v34

    const-wide v36, 0x401f25e353f7ced9L    # 7.787

    div-double v22, v34, v36

    goto/16 :goto_1

    .line 727
    :cond_2
    const-wide v34, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double v34, v26, v34

    const-wide v36, 0x401f25e353f7ced9L    # 7.787

    div-double v26, v34, v36

    goto/16 :goto_2

    .line 752
    .restart local v10    # "X":D
    .restart local v12    # "Y":D
    .restart local v14    # "Z":D
    .restart local v16    # "var_B":D
    .restart local v18    # "var_G":D
    .restart local v20    # "var_R":D
    :cond_3
    const-wide v34, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v20, v20, v34

    goto/16 :goto_3

    .line 756
    :cond_4
    const-wide v34, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v18, v18, v34

    goto :goto_4

    .line 761
    :cond_5
    const-wide v34, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v16, v16, v34

    goto :goto_5
.end method

.method public static convertCIELabtoCIELCH(DDD)Lorg/apache/sanselan/color/ColorCIELCH;
    .locals 10
    .param p0, "L"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .prologue
    .line 806
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 808
    .local v8, "var_H":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    .line 809
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double v0, v8, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v8, v0, v2

    .line 814
    :goto_0
    invoke-static {p2, p3}, Lorg/apache/sanselan/color/ColorConversions;->square(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Lorg/apache/sanselan/color/ColorConversions;->square(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 815
    .local v4, "C":D
    move-wide v6, v8

    .line 817
    .local v6, "H":D
    new-instance v1, Lorg/apache/sanselan/color/ColorCIELCH;

    move-wide v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorCIELCH;-><init>(DDD)V

    return-object v1

    .line 811
    .end local v4    # "C":D
    .end local v6    # "H":D
    :cond_0
    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/sanselan/color/ColorConversions;->radian_2_degree(D)D

    move-result-wide v2

    sub-double v8, v0, v2

    goto :goto_0
.end method

.method public static convertCIELabtoCIELCH(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorCIELCH;
    .locals 6
    .param p0, "cielab"    # Lorg/apache/sanselan/color/ColorCIELab;

    .prologue
    .line 801
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELab;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELab;->a:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoCIELCH(DDD)Lorg/apache/sanselan/color/ColorCIELCH;

    move-result-object v0

    return-object v0
.end method

.method public static final convertCIELabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 16
    .param p0, "L"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .prologue
    .line 226
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v0, v0, p0

    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    div-double v10, v0, v14

    .line 227
    .local v10, "var_Y":D
    const-wide v0, 0x407f400000000000L    # 500.0

    div-double v0, p2, v0

    add-double v8, v0, v10

    .line 228
    .local v8, "var_X":D
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    div-double v0, p4, v0

    sub-double v12, v10, v0

    .line 230
    .local v12, "var_Z":D
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v0, v14

    if-lez v0, :cond_0

    .line 231
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 234
    :goto_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v0, v14

    if-lez v0, :cond_1

    .line 235
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 238
    :goto_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v0, v14

    if-lez v0, :cond_2

    .line 239
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 243
    :goto_2
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double v2, v0, v8

    .line 244
    .local v2, "X":D
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v4, v0, v10

    .line 245
    .local v4, "Y":D
    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double v6, v0, v12

    .line 247
    .local v6, "Z":D
    new-instance v1, Lorg/apache/sanselan/color/ColorXYZ;

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v1

    .line 233
    .end local v2    # "X":D
    .end local v4    # "Y":D
    .end local v6    # "Z":D
    :cond_0
    const-wide v0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double v0, v10, v0

    const-wide v14, 0x401f25e353f7ced9L    # 7.787

    div-double v10, v0, v14

    goto :goto_0

    .line 237
    :cond_1
    const-wide v0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double v0, v8, v0

    const-wide v14, 0x401f25e353f7ced9L    # 7.787

    div-double v8, v0, v14

    goto :goto_1

    .line 241
    :cond_2
    const-wide v0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    sub-double v0, v12, v0

    const-wide v14, 0x401f25e353f7ced9L    # 7.787

    div-double v12, v0, v14

    goto :goto_2
.end method

.method public static final convertCIELabtoXYZ(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 6
    .param p0, "cielab"    # Lorg/apache/sanselan/color/ColorCIELab;

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELab;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELab;->a:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v0

    return-object v0
.end method

.method public static convertCIELuvtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 30
    .param p0, "L"    # D
    .param p2, "u"    # D
    .param p4, "v"    # D

    .prologue
    .line 897
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double v2, v2, p0

    const-wide/high16 v26, 0x405d000000000000L    # 116.0

    div-double v24, v2, v26

    .line 898
    .local v24, "var_Y":D
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v26, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v2, v26

    if-lez v2, :cond_0

    .line 899
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    .line 903
    :goto_0
    const-wide v14, 0x4057c3020c49ba5eL    # 95.047

    .line 904
    .local v14, "ref_X":D
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 905
    .local v16, "ref_Y":D
    const-wide v18, 0x405b3883126e978dL    # 108.883

    .line 907
    .local v18, "ref_Z":D
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v14

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, v16

    add-double v26, v26, v14

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, v18

    add-double v26, v26, v28

    div-double v10, v2, v26

    .line 908
    .local v10, "ref_U":D
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double v2, v2, v16

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, v16

    add-double v26, v26, v14

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, v18

    add-double v26, v26, v28

    div-double v12, v2, v26

    .line 909
    .local v12, "ref_V":D
    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    mul-double v2, v2, p0

    div-double v2, p2, v2

    add-double v20, v2, v10

    .line 910
    .local v20, "var_U":D
    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    mul-double v2, v2, p0

    div-double v2, p4, v2

    add-double v22, v2, v12

    .line 912
    .local v22, "var_V":D
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v6, v24, v2

    .line 913
    .local v6, "Y":D
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v6

    mul-double v2, v2, v20

    neg-double v2, v2

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    sub-double v26, v20, v26

    mul-double v26, v26, v22

    mul-double v28, v20, v22

    sub-double v26, v26, v28

    div-double v4, v2, v26

    .line 914
    .local v4, "X":D
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v6

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, v22

    mul-double v26, v26, v6

    sub-double v2, v2, v26

    mul-double v26, v22, v4

    sub-double v2, v2, v26

    const-wide/high16 v26, 0x4008000000000000L    # 3.0

    mul-double v26, v26, v22

    div-double v8, v2, v26

    .line 916
    .local v8, "Z":D
    new-instance v3, Lorg/apache/sanselan/color/ColorXYZ;

    invoke-direct/range {v3 .. v9}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v3

    .line 901
    .end local v4    # "X":D
    .end local v6    # "Y":D
    .end local v8    # "Z":D
    .end local v10    # "ref_U":D
    .end local v12    # "ref_V":D
    .end local v14    # "ref_X":D
    .end local v16    # "ref_Y":D
    .end local v18    # "ref_Z":D
    .end local v20    # "var_U":D
    .end local v22    # "var_V":D
    :cond_0
    const-wide/16 v2, 0x0

    sub-double v2, v24, v2

    const-wide v26, 0x401f25e353f7ced9L    # 7.787

    div-double v24, v2, v26

    goto :goto_0
.end method

.method public static convertCIELuvtoXYZ(Lorg/apache/sanselan/color/ColorCIELuv;)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 6
    .param p0, "cielch"    # Lorg/apache/sanselan/color/ColorCIELuv;

    .prologue
    .line 890
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCIELuv;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCIELuv;->u:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCIELuv;->v:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELuvtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v0

    return-object v0
.end method

.method public static final convertCMYKtoCMY(DDDD)Lorg/apache/sanselan/color/ColorCMY;
    .locals 8
    .param p0, "C"    # D
    .param p2, "M"    # D
    .param p4, "Y"    # D
    .param p6, "K"    # D

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 424
    sub-double v0, v2, p6

    mul-double/2addr v0, p0

    add-double p0, v0, p6

    .line 425
    sub-double v0, v2, p6

    mul-double/2addr v0, p2

    add-double p2, v0, p6

    .line 426
    sub-double v0, v2, p6

    mul-double/2addr v0, p4

    add-double p4, v0, p6

    .line 428
    new-instance v1, Lorg/apache/sanselan/color/ColorCMY;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorCMY;-><init>(DDD)V

    return-object v1
.end method

.method public static final convertCMYKtoCMY(Lorg/apache/sanselan/color/ColorCMYK;)Lorg/apache/sanselan/color/ColorCMY;
    .locals 8
    .param p0, "cmyk"    # Lorg/apache/sanselan/color/ColorCMYK;

    .prologue
    .line 416
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorCMYK;->C:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCMYK;->M:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCMYK;->Y:D

    iget-wide v6, p0, Lorg/apache/sanselan/color/ColorCMYK;->K:D

    invoke-static/range {v0 .. v7}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object v0

    return-object v0
.end method

.method public static final convertCMYKtoRGB(IIII)I
    .locals 12
    .param p0, "c"    # I
    .param p1, "m"    # I
    .param p2, "y"    # I
    .param p3, "k"    # I

    .prologue
    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 434
    int-to-double v8, p0

    div-double v0, v8, v10

    .line 435
    .local v0, "C":D
    int-to-double v8, p1

    div-double v2, v8, v10

    .line 436
    .local v2, "M":D
    int-to-double v8, p2

    div-double v4, v8, v10

    .line 437
    .local v4, "Y":D
    int-to-double v8, p3

    div-double v6, v8, v10

    .line 439
    .local v6, "K":D
    invoke-static/range {v0 .. v7}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYtoRGB(Lorg/apache/sanselan/color/ColorCMY;)I

    move-result v8

    return v8
.end method

.method public static final convertCMYKtoRGB_old(IIII)I
    .locals 4
    .param p0, "sc"    # I
    .param p1, "sm"    # I
    .param p2, "sy"    # I
    .param p3, "sk"    # I

    .prologue
    .line 683
    add-int v3, p0, p3

    rsub-int v2, v3, 0xff

    .line 684
    .local v2, "red":I
    add-int v3, p1, p3

    rsub-int v1, v3, 0xff

    .line 685
    .local v1, "green":I
    add-int v3, p2, p3

    rsub-int v0, v3, 0xff

    .line 687
    .local v0, "blue":I
    invoke-static {v2, v1, v0}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(III)I

    move-result v3

    return v3
.end method

.method public static final convertCMYtoCMYK(Lorg/apache/sanselan/color/ColorCMY;)Lorg/apache/sanselan/color/ColorCMYK;
    .locals 14
    .param p0, "cmy"    # Lorg/apache/sanselan/color/ColorCMY;

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 387
    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorCMY;->C:D

    .line 388
    .local v2, "C":D
    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorCMY;->M:D

    .line 389
    .local v4, "M":D
    iget-wide v6, p0, Lorg/apache/sanselan/color/ColorCMY;->Y:D

    .line 391
    .local v6, "Y":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 393
    .local v8, "var_K":D
    cmpg-double v0, v2, v8

    if-gez v0, :cond_0

    .line 394
    move-wide v8, v2

    .line 395
    :cond_0
    cmpg-double v0, v4, v8

    if-gez v0, :cond_1

    .line 396
    move-wide v8, v4

    .line 397
    :cond_1
    cmpg-double v0, v6, v8

    if-gez v0, :cond_2

    .line 398
    move-wide v8, v6

    .line 399
    :cond_2
    cmpl-double v0, v8, v12

    if-nez v0, :cond_3

    .line 401
    const-wide/16 v2, 0x0

    .line 402
    const-wide/16 v4, 0x0

    .line 403
    const-wide/16 v6, 0x0

    .line 411
    :goto_0
    new-instance v1, Lorg/apache/sanselan/color/ColorCMYK;

    invoke-direct/range {v1 .. v9}, Lorg/apache/sanselan/color/ColorCMYK;-><init>(DDDD)V

    return-object v1

    .line 407
    :cond_3
    sub-double v0, v2, v8

    sub-double v10, v12, v8

    div-double v2, v0, v10

    .line 408
    sub-double v0, v4, v8

    sub-double v10, v12, v8

    div-double v4, v0, v10

    .line 409
    sub-double v0, v6, v8

    sub-double v10, v12, v8

    div-double v6, v0, v10

    goto :goto_0
.end method

.method public static final convertCMYtoRGB(Lorg/apache/sanselan/color/ColorCMY;)I
    .locals 12
    .param p0, "cmy"    # Lorg/apache/sanselan/color/ColorCMY;

    .prologue
    const-wide v10, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 376
    iget-wide v6, p0, Lorg/apache/sanselan/color/ColorCMY;->C:D

    sub-double v6, v8, v6

    mul-double v0, v6, v10

    .line 377
    .local v0, "R":D
    iget-wide v6, p0, Lorg/apache/sanselan/color/ColorCMY;->M:D

    sub-double v6, v8, v6

    mul-double v2, v6, v10

    .line 378
    .local v2, "G":D
    iget-wide v6, p0, Lorg/apache/sanselan/color/ColorCMY;->Y:D

    sub-double v6, v8, v6

    mul-double v4, v6, v10

    .line 380
    .local v4, "B":D
    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v6

    return v6
.end method

.method public static convertHSLtoRGB(DDD)I
    .locals 16
    .param p0, "H"    # D
    .param p2, "S"    # D
    .param p4, "L"    # D

    .prologue
    .line 516
    const-wide/16 v12, 0x0

    cmpl-double v12, p2, v12

    if-nez v12, :cond_0

    .line 518
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v4, p4, v12

    .line 519
    .local v4, "R":D
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v6, p4, v12

    .line 520
    .local v6, "G":D
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v8, p4, v12

    .line 538
    .local v8, "B":D
    :goto_0
    invoke-static/range {v4 .. v9}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v12

    return v12

    .line 526
    .end local v4    # "R":D
    .end local v6    # "G":D
    .end local v8    # "B":D
    :cond_0
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, p4, v12

    if-gez v12, :cond_1

    .line 527
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v12, v12, p2

    mul-double v2, p4, v12

    .line 531
    .local v2, "var_2":D
    :goto_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, p4

    sub-double v0, v12, v2

    .line 533
    .local v0, "var_1":D
    const-wide v12, 0x406fe00000000000L    # 255.0

    const-wide v14, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v4, p0, v14

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v14

    mul-double v10, v12, v14

    .line 534
    .local v10, "R":D
    const-wide v12, 0x406fe00000000000L    # 255.0

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v14

    mul-double v6, v12, v14

    .line 535
    .restart local v6    # "G":D
    const-wide v12, 0x406fe00000000000L    # 255.0

    const-wide v14, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v4, p0, v14

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v14

    mul-double v8, v12, v14

    .restart local v8    # "B":D
    move-wide v4, v10

    .end local v10    # "R":D
    .restart local v4    # "R":D
    goto :goto_0

    .line 529
    .end local v0    # "var_1":D
    .end local v2    # "var_2":D
    .end local v4    # "R":D
    .end local v6    # "G":D
    .end local v8    # "B":D
    :cond_1
    add-double v12, p4, p2

    mul-double v14, p2, p4

    sub-double v2, v12, v14

    .restart local v2    # "var_2":D
    goto :goto_1
.end method

.method public static convertHSLtoRGB(Lorg/apache/sanselan/color/ColorHSL;)I
    .locals 6
    .param p0, "hsl"    # Lorg/apache/sanselan/color/ColorHSL;

    .prologue
    .line 509
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorHSL;->H:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorHSL;->S:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorHSL;->L:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHSLtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSVtoRGB(DDD)I
    .locals 28
    .param p0, "H"    # D
    .param p2, "S"    # D
    .param p4, "V"    # D

    .prologue
    .line 617
    const-wide/16 v22, 0x0

    cmpl-double v22, p2, v22

    if-nez v22, :cond_0

    .line 619
    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v0, p4, v22

    .line 620
    .local v0, "R":D
    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v2, p4, v22

    .line 621
    .local v2, "G":D
    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v4, p4, v22

    .line 677
    .local v4, "B":D
    :goto_0
    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v22

    return v22

    .line 625
    .end local v0    # "R":D
    .end local v2    # "G":D
    .end local v4    # "B":D
    :cond_0
    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    mul-double v16, p0, v22

    .line 626
    .local v16, "var_h":D
    const-wide/high16 v22, 0x4018000000000000L    # 6.0

    cmpl-double v22, v16, v22

    if-nez v22, :cond_1

    .line 627
    const-wide/16 v16, 0x0

    .line 628
    :cond_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    .line 629
    .local v18, "var_i":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, p2

    mul-double v6, p4, v22

    .line 630
    .local v6, "var_1":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v24, v16, v18

    mul-double v24, v24, p2

    sub-double v22, v22, v24

    mul-double v8, p4, v22

    .line 631
    .local v8, "var_2":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v26, v16, v18

    sub-double v24, v24, v26

    mul-double v24, v24, p2

    sub-double v22, v22, v24

    mul-double v10, p4, v22

    .line 635
    .local v10, "var_3":D
    const-wide/16 v22, 0x0

    cmpl-double v22, v18, v22

    if-nez v22, :cond_2

    .line 637
    move-wide/from16 v20, p4

    .line 638
    .local v20, "var_r":D
    move-wide v14, v10

    .line 639
    .local v14, "var_g":D
    move-wide v12, v6

    .line 672
    .local v12, "var_b":D
    :goto_1
    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v0, v20, v22

    .line 673
    .restart local v0    # "R":D
    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v2, v14, v22

    .line 674
    .restart local v2    # "G":D
    const-wide v22, 0x406fe00000000000L    # 255.0

    mul-double v4, v12, v22

    .restart local v4    # "B":D
    goto :goto_0

    .line 641
    .end local v0    # "R":D
    .end local v2    # "G":D
    .end local v4    # "B":D
    .end local v12    # "var_b":D
    .end local v14    # "var_g":D
    .end local v20    # "var_r":D
    :cond_2
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v18, v22

    if-nez v22, :cond_3

    .line 643
    move-wide/from16 v20, v8

    .line 644
    .restart local v20    # "var_r":D
    move-wide/from16 v14, p4

    .line 645
    .restart local v14    # "var_g":D
    move-wide v12, v6

    .restart local v12    # "var_b":D
    goto :goto_1

    .line 647
    .end local v12    # "var_b":D
    .end local v14    # "var_g":D
    .end local v20    # "var_r":D
    :cond_3
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    cmpl-double v22, v18, v22

    if-nez v22, :cond_4

    .line 649
    move-wide/from16 v20, v6

    .line 650
    .restart local v20    # "var_r":D
    move-wide/from16 v14, p4

    .line 651
    .restart local v14    # "var_g":D
    move-wide v12, v10

    .restart local v12    # "var_b":D
    goto :goto_1

    .line 653
    .end local v12    # "var_b":D
    .end local v14    # "var_g":D
    .end local v20    # "var_r":D
    :cond_4
    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    cmpl-double v22, v18, v22

    if-nez v22, :cond_5

    .line 655
    move-wide/from16 v20, v6

    .line 656
    .restart local v20    # "var_r":D
    move-wide v14, v8

    .line 657
    .restart local v14    # "var_g":D
    move-wide/from16 v12, p4

    .restart local v12    # "var_b":D
    goto :goto_1

    .line 659
    .end local v12    # "var_b":D
    .end local v14    # "var_g":D
    .end local v20    # "var_r":D
    :cond_5
    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    cmpl-double v22, v18, v22

    if-nez v22, :cond_6

    .line 661
    move-wide/from16 v20, v10

    .line 662
    .restart local v20    # "var_r":D
    move-wide v14, v6

    .line 663
    .restart local v14    # "var_g":D
    move-wide/from16 v12, p4

    .restart local v12    # "var_b":D
    goto :goto_1

    .line 667
    .end local v12    # "var_b":D
    .end local v14    # "var_g":D
    .end local v20    # "var_r":D
    :cond_6
    move-wide/from16 v20, p4

    .line 668
    .restart local v20    # "var_r":D
    move-wide v14, v6

    .line 669
    .restart local v14    # "var_g":D
    move-wide v12, v8

    .restart local v12    # "var_b":D
    goto :goto_1
.end method

.method public static convertHSVtoRGB(Lorg/apache/sanselan/color/ColorHSV;)I
    .locals 6
    .param p0, "HSV"    # Lorg/apache/sanselan/color/ColorHSV;

    .prologue
    .line 610
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorHSV;->H:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorHSV;->S:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorHSV;->V:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHSVtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method private static convertHuetoRGB(DDD)D
    .locals 8
    .param p0, "v1"    # D
    .param p2, "v2"    # D
    .param p4, "vH"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 543
    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_0

    .line 544
    add-double/2addr p4, v2

    .line 545
    :cond_0
    cmpl-double v0, p4, v2

    if-lez v0, :cond_1

    .line 546
    sub-double/2addr p4, v2

    .line 547
    :cond_1
    mul-double v0, v4, p4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 548
    sub-double v0, p2, p0

    mul-double/2addr v0, v4

    mul-double/2addr v0, p4

    add-double p2, p0, v0

    .line 553
    .end local p2    # "v2":D
    :cond_2
    :goto_0
    return-wide p2

    .line 549
    .restart local p2    # "v2":D
    :cond_3
    mul-double v0, v6, p4

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 551
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p4

    cmpg-double v0, v0, v6

    if-gez v0, :cond_4

    .line 552
    sub-double v0, p2, p0

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v2, p4

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double p2, p0, v0

    goto :goto_0

    :cond_4
    move-wide p2, p0

    .line 553
    goto :goto_0
.end method

.method public static final convertHunterLabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 16
    .param p0, "L"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .prologue
    .line 273
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double v10, p0, v0

    .line 274
    .local v10, "var_Y":D
    const-wide v0, 0x4031800000000000L    # 17.5

    div-double v0, p2, v0

    mul-double v0, v0, p0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v8, v0, v14

    .line 275
    .local v8, "var_X":D
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    div-double v0, p4, v0

    mul-double v0, v0, p0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v12, v0, v14

    .line 277
    .local v12, "var_Z":D
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 278
    .local v4, "Y":D
    add-double v0, v8, v4

    const-wide v14, 0x3ff051eb851eb852L    # 1.02

    div-double v2, v0, v14

    .line 279
    .local v2, "X":D
    sub-double v0, v12, v4

    neg-double v0, v0

    const-wide v14, 0x3feb1a9fbe76c8b4L    # 0.847

    div-double v6, v0, v14

    .line 281
    .local v6, "Z":D
    new-instance v1, Lorg/apache/sanselan/color/ColorXYZ;

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v1
.end method

.method public static final convertHunterLabtoXYZ(Lorg/apache/sanselan/color/ColorHunterLab;)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 6
    .param p0, "cielab"    # Lorg/apache/sanselan/color/ColorHunterLab;

    .prologue
    .line 267
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorHunterLab;->L:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorHunterLab;->a:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorHunterLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertHunterLabtoXYZ(DDD)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v0

    return-object v0
.end method

.method public static final convertRGBtoCMY(I)Lorg/apache/sanselan/color/ColorCMY;
    .locals 16
    .param p0, "rgb"    # I

    .prologue
    .line 357
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v9, v1, 0xff

    .line 358
    .local v9, "R":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v8, v1, 0xff

    .line 359
    .local v8, "G":I
    shr-int/lit8 v1, p0, 0x0

    and-int/lit16 v0, v1, 0xff

    .line 364
    .local v0, "B":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v9

    const-wide v14, 0x406fe00000000000L    # 255.0

    div-double/2addr v12, v14

    sub-double v2, v10, v12

    .line 365
    .local v2, "C":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v8

    const-wide v14, 0x406fe00000000000L    # 255.0

    div-double/2addr v12, v14

    sub-double v4, v10, v12

    .line 366
    .local v4, "M":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v0

    const-wide v14, 0x406fe00000000000L    # 255.0

    div-double/2addr v12, v14

    sub-double v6, v10, v12

    .line 368
    .local v6, "Y":D
    new-instance v1, Lorg/apache/sanselan/color/ColorCMY;

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorCMY;-><init>(DDD)V

    return-object v1
.end method

.method public static final convertRGBtoHSL(I)Lorg/apache/sanselan/color/ColorHSL;
    .locals 36
    .param p0, "rgb"    # I

    .prologue
    .line 445
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v13, v5, 0xff

    .line 446
    .local v13, "R":I
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v12, v5, 0xff

    .line 447
    .local v12, "G":I
    shr-int/lit8 v5, p0, 0x0

    and-int/lit16 v4, v5, 0xff

    .line 449
    .local v4, "B":I
    int-to-double v0, v13

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v30, v32, v34

    .line 450
    .local v30, "var_R":D
    int-to-double v0, v12

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v24, v32, v34

    .line 451
    .local v24, "var_G":D
    int-to-double v0, v4

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v22, v32, v34

    .line 453
    .local v22, "var_B":D
    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    .line 454
    .local v28, "var_Min":D
    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    .line 455
    .local v26, "var_Max":D
    sub-double v18, v26, v28

    .line 457
    .local v18, "del_Max":D
    add-double v32, v26, v28

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v10, v32, v34

    .line 461
    .local v10, "L":D
    const-wide/16 v32, 0x0

    cmpl-double v5, v18, v32

    if-nez v5, :cond_1

    .line 463
    const-wide/16 v6, 0x0

    .line 464
    .local v6, "H":D
    const-wide/16 v8, 0x0

    .line 504
    .local v8, "S":D
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/sanselan/color/ColorHSL;

    invoke-direct/range {v5 .. v11}, Lorg/apache/sanselan/color/ColorHSL;-><init>(DDD)V

    return-object v5

    .line 471
    .end local v6    # "H":D
    .end local v8    # "S":D
    :cond_1
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v10, v32

    if-gez v5, :cond_3

    .line 472
    add-double v32, v26, v28

    div-double v8, v18, v32

    .line 478
    .restart local v8    # "S":D
    :goto_1
    sub-double v32, v26, v30

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v18, v34

    add-double v32, v32, v34

    div-double v20, v32, v18

    .line 479
    .local v20, "del_R":D
    sub-double v32, v26, v24

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v18, v34

    add-double v32, v32, v34

    div-double v16, v32, v18

    .line 480
    .local v16, "del_G":D
    sub-double v32, v26, v22

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v18, v34

    add-double v32, v32, v34

    div-double v14, v32, v18

    .line 482
    .local v14, "del_B":D
    cmpl-double v5, v30, v26

    if-nez v5, :cond_4

    .line 483
    sub-double v6, v14, v16

    .line 496
    .restart local v6    # "H":D
    :goto_2
    const-wide/16 v32, 0x0

    cmpg-double v5, v6, v32

    if-gez v5, :cond_2

    .line 497
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v32

    .line 498
    :cond_2
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v32

    if-lez v5, :cond_0

    .line 499
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v32

    goto :goto_0

    .line 474
    .end local v6    # "H":D
    .end local v8    # "S":D
    .end local v14    # "del_B":D
    .end local v16    # "del_G":D
    .end local v20    # "del_R":D
    :cond_3
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    sub-double v32, v32, v26

    sub-double v32, v32, v28

    div-double v8, v18, v32

    .restart local v8    # "S":D
    goto :goto_1

    .line 484
    .restart local v14    # "del_B":D
    .restart local v16    # "del_G":D
    .restart local v20    # "del_R":D
    :cond_4
    cmpl-double v5, v24, v26

    if-nez v5, :cond_5

    .line 485
    const-wide v32, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v32, v32, v20

    sub-double v6, v32, v14

    .restart local v6    # "H":D
    goto :goto_2

    .line 486
    .end local v6    # "H":D
    :cond_5
    cmpl-double v5, v22, v26

    if-nez v5, :cond_6

    .line 487
    const-wide v32, 0x3fe5555555555555L    # 0.6666666666666666

    add-double v32, v32, v16

    sub-double v6, v32, v20

    .restart local v6    # "H":D
    goto :goto_2

    .line 490
    .end local v6    # "H":D
    :cond_6
    const-string v5, "uh oh"

    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 491
    const-wide/16 v6, 0x0

    .restart local v6    # "H":D
    goto :goto_2
.end method

.method public static final convertRGBtoHSV(I)Lorg/apache/sanselan/color/ColorHSV;
    .locals 36
    .param p0, "rgb"    # I

    .prologue
    .line 558
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v13, v5, 0xff

    .line 559
    .local v13, "R":I
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v12, v5, 0xff

    .line 560
    .local v12, "G":I
    shr-int/lit8 v5, p0, 0x0

    and-int/lit16 v4, v5, 0xff

    .line 562
    .local v4, "B":I
    int-to-double v0, v13

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v30, v32, v34

    .line 563
    .local v30, "var_R":D
    int-to-double v0, v12

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v24, v32, v34

    .line 564
    .local v24, "var_G":D
    int-to-double v0, v4

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v22, v32, v34

    .line 566
    .local v22, "var_B":D
    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    .line 567
    .local v28, "var_Min":D
    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    .line 568
    .local v26, "var_Max":D
    sub-double v18, v26, v28

    .line 570
    .local v18, "del_Max":D
    move-wide/from16 v10, v26

    .line 573
    .local v10, "V":D
    const-wide/16 v32, 0x0

    cmpl-double v5, v18, v32

    if-nez v5, :cond_1

    .line 575
    const-wide/16 v6, 0x0

    .line 576
    .local v6, "H":D
    const-wide/16 v8, 0x0

    .line 605
    .local v8, "S":D
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/sanselan/color/ColorHSV;

    invoke-direct/range {v5 .. v11}, Lorg/apache/sanselan/color/ColorHSV;-><init>(DDD)V

    return-object v5

    .line 581
    .end local v6    # "H":D
    .end local v8    # "S":D
    :cond_1
    div-double v8, v18, v26

    .line 583
    .restart local v8    # "S":D
    sub-double v32, v26, v30

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v18, v34

    add-double v32, v32, v34

    div-double v20, v32, v18

    .line 584
    .local v20, "del_R":D
    sub-double v32, v26, v24

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v18, v34

    add-double v32, v32, v34

    div-double v16, v32, v18

    .line 585
    .local v16, "del_G":D
    sub-double v32, v26, v22

    const-wide/high16 v34, 0x4018000000000000L    # 6.0

    div-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v34, v18, v34

    add-double v32, v32, v34

    div-double v14, v32, v18

    .line 587
    .local v14, "del_B":D
    cmpl-double v5, v30, v26

    if-nez v5, :cond_3

    .line 588
    sub-double v6, v14, v16

    .line 599
    .restart local v6    # "H":D
    :goto_1
    const-wide/16 v32, 0x0

    cmpg-double v5, v6, v32

    if-gez v5, :cond_2

    .line 600
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v32

    .line 601
    :cond_2
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v6, v32

    if-lez v5, :cond_0

    .line 602
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v6, v6, v32

    goto :goto_0

    .line 589
    .end local v6    # "H":D
    :cond_3
    cmpl-double v5, v24, v26

    if-nez v5, :cond_4

    .line 590
    const-wide v32, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v32, v32, v20

    sub-double v6, v32, v14

    .restart local v6    # "H":D
    goto :goto_1

    .line 591
    .end local v6    # "H":D
    :cond_4
    cmpl-double v5, v22, v26

    if-nez v5, :cond_5

    .line 592
    const-wide v32, 0x3fe5555555555555L    # 0.6666666666666666

    add-double v32, v32, v16

    sub-double v6, v32, v20

    .restart local v6    # "H":D
    goto :goto_1

    .line 595
    .end local v6    # "H":D
    :cond_5
    const-string v5, "uh oh"

    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 596
    const-wide/16 v6, 0x0

    .restart local v6    # "H":D
    goto :goto_1
.end method

.method private static final convertRGBtoRGB(DDD)I
    .locals 10
    .param p0, "R"    # D
    .param p2, "G"    # D
    .param p4, "B"    # D

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x0

    .line 773
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v3, v6

    .line 774
    .local v3, "red":I
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    .line 775
    .local v2, "green":I
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    .line 777
    .local v1, "blue":I
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 778
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 779
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 781
    const/16 v0, 0xff

    .line 782
    .local v0, "alpha":I
    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x0

    or-int v4, v5, v6

    .line 784
    .local v4, "rgb":I
    return v4
.end method

.method private static final convertRGBtoRGB(III)I
    .locals 5
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 789
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 790
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 791
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 793
    const/16 v0, 0xff

    .line 794
    .local v0, "alpha":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, p0, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x8

    or-int/2addr v2, v3

    shl-int/lit8 v3, p2, 0x0

    or-int v1, v2, v3

    .line 796
    .local v1, "rgb":I
    return v1
.end method

.method public static final convertRGBtoXYZ(I)Lorg/apache/sanselan/color/ColorXYZ;
    .locals 22
    .param p0, "rgb"    # I

    .prologue
    .line 322
    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v11, v3, 0xff

    .line 323
    .local v11, "r":I
    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v10, v3, 0xff

    .line 324
    .local v10, "g":I
    shr-int/lit8 v3, p0, 0x0

    and-int/lit16 v2, v3, 0xff

    .line 326
    .local v2, "b":I
    int-to-double v0, v11

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v16, v18, v20

    .line 327
    .local v16, "var_R":D
    int-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v14, v18, v20

    .line 328
    .local v14, "var_G":D
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x406fe00000000000L    # 255.0

    div-double v12, v18, v20

    .line 330
    .local v12, "var_B":D
    const-wide v18, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v3, v16, v18

    if-lez v3, :cond_0

    .line 331
    const-wide v18, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v16

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 334
    :goto_0
    const-wide v18, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v3, v14, v18

    if-lez v3, :cond_1

    .line 335
    const-wide v18, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v14

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 338
    :goto_1
    const-wide v18, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v3, v12, v18

    if-lez v3, :cond_2

    .line 339
    const-wide v18, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v12

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 343
    :goto_2
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    .line 344
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v18

    .line 345
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v18

    .line 348
    const-wide v18, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v18, v18, v16

    const-wide v20, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v20, v20, v14

    add-double v18, v18, v20

    const-wide v20, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v20, v20, v12

    add-double v4, v18, v20

    .line 349
    .local v4, "X":D
    const-wide v18, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v18, v18, v16

    const-wide v20, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v20, v20, v14

    add-double v18, v18, v20

    const-wide v20, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v20, v20, v12

    add-double v6, v18, v20

    .line 350
    .local v6, "Y":D
    const-wide v18, 0x3f93c36113404ea5L    # 0.0193

    mul-double v18, v18, v16

    const-wide v20, 0x3fbe83e425aee632L    # 0.1192

    mul-double v20, v20, v14

    add-double v18, v18, v20

    const-wide v20, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v20, v20, v12

    add-double v8, v18, v20

    .line 352
    .local v8, "Z":D
    new-instance v3, Lorg/apache/sanselan/color/ColorXYZ;

    invoke-direct/range {v3 .. v9}, Lorg/apache/sanselan/color/ColorXYZ;-><init>(DDD)V

    return-object v3

    .line 333
    .end local v4    # "X":D
    .end local v6    # "Y":D
    .end local v8    # "Z":D
    :cond_0
    const-wide v18, 0x4029d70a3d70a3d7L    # 12.92

    div-double v16, v16, v18

    goto/16 :goto_0

    .line 337
    :cond_1
    const-wide v18, 0x4029d70a3d70a3d7L    # 12.92

    div-double v14, v14, v18

    goto/16 :goto_1

    .line 341
    :cond_2
    const-wide v18, 0x4029d70a3d70a3d7L    # 12.92

    div-double v12, v12, v18

    goto :goto_2
.end method

.method public static final convertXYZtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 16
    .param p0, "X"    # D
    .param p2, "Y"    # D
    .param p4, "Z"    # D

    .prologue
    .line 196
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v8, p0, v0

    .line 197
    .local v8, "var_X":D
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v10, p2, v0

    .line 198
    .local v10, "var_Y":D
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v12, p4, v0

    .line 200
    .local v12, "var_Z":D
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    .line 201
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 204
    :goto_0
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v10, v0

    if-lez v0, :cond_1

    .line 205
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 208
    :goto_1
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v12, v0

    if-lez v0, :cond_2

    .line 209
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 213
    :goto_2
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    mul-double/2addr v0, v10

    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    sub-double v2, v0, v14

    .line 214
    .local v2, "L":D
    const-wide v0, 0x407f400000000000L    # 500.0

    sub-double v14, v8, v10

    mul-double v4, v0, v14

    .line 215
    .local v4, "a":D
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double v14, v10, v12

    mul-double v6, v0, v14

    .line 216
    .local v6, "b":D
    new-instance v1, Lorg/apache/sanselan/color/ColorCIELab;

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorCIELab;-><init>(DDD)V

    return-object v1

    .line 203
    .end local v2    # "L":D
    .end local v4    # "a":D
    .end local v6    # "b":D
    :cond_0
    const-wide v0, 0x401f25e353f7ced9L    # 7.787

    mul-double/2addr v0, v8

    const-wide v14, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double v8, v0, v14

    goto :goto_0

    .line 207
    :cond_1
    const-wide v0, 0x401f25e353f7ced9L    # 7.787

    mul-double/2addr v0, v10

    const-wide v14, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double v10, v0, v14

    goto :goto_1

    .line 211
    :cond_2
    const-wide v0, 0x401f25e353f7ced9L    # 7.787

    mul-double/2addr v0, v12

    const-wide v14, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double v12, v0, v14

    goto :goto_2
.end method

.method public static final convertXYZtoCIELab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELab;
    .locals 6
    .param p0, "xyz"    # Lorg/apache/sanselan/color/ColorXYZ;

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELab(DDD)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object v0

    return-object v0
.end method

.method public static convertXYZtoCIELuv(DDD)Lorg/apache/sanselan/color/ColorCIELuv;
    .locals 30
    .param p0, "X"    # D
    .param p2, "Y"    # D
    .param p4, "Z"    # D

    .prologue
    .line 855
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p0

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, p2

    add-double v26, v26, p0

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, p4

    add-double v26, v26, v28

    div-double v20, v2, v26

    .line 856
    .local v20, "var_U":D
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double v2, v2, p2

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, p2

    add-double v26, v26, p0

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, p4

    add-double v26, v26, v28

    div-double v22, v2, v26

    .line 861
    .local v22, "var_V":D
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v24, p2, v2

    .line 864
    .local v24, "var_Y":D
    const-wide v2, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v24, v2

    if-lez v2, :cond_0

    .line 865
    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    .line 869
    :goto_0
    const-wide v14, 0x4057c3020c49ba5eL    # 95.047

    .line 870
    .local v14, "ref_X":D
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    .line 871
    .local v16, "ref_Y":D
    const-wide v18, 0x405b3883126e978dL    # 108.883

    .line 875
    .local v18, "ref_Z":D
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v14

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, v16

    add-double v26, v26, v14

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, v18

    add-double v26, v26, v28

    div-double v10, v2, v26

    .line 876
    .local v10, "ref_U":D
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double v2, v2, v16

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, v16

    add-double v26, v26, v14

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    mul-double v28, v28, v18

    add-double v26, v26, v28

    div-double v12, v2, v26

    .line 881
    .local v12, "ref_V":D
    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    mul-double v2, v2, v24

    const-wide/high16 v26, 0x4030000000000000L    # 16.0

    sub-double v4, v2, v26

    .line 882
    .local v4, "L":D
    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    mul-double/2addr v2, v4

    sub-double v26, v20, v10

    mul-double v6, v2, v26

    .line 883
    .local v6, "u":D
    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    mul-double/2addr v2, v4

    sub-double v26, v22, v12

    mul-double v8, v2, v26

    .line 885
    .local v8, "v":D
    new-instance v3, Lorg/apache/sanselan/color/ColorCIELuv;

    invoke-direct/range {v3 .. v9}, Lorg/apache/sanselan/color/ColorCIELuv;-><init>(DDD)V

    return-object v3

    .line 867
    .end local v4    # "L":D
    .end local v6    # "u":D
    .end local v8    # "v":D
    .end local v10    # "ref_U":D
    .end local v12    # "ref_V":D
    .end local v14    # "ref_X":D
    .end local v16    # "ref_Y":D
    .end local v18    # "ref_Z":D
    :cond_0
    const-wide v2, 0x401f25e353f7ced9L    # 7.787

    mul-double v2, v2, v24

    const-wide v26, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double v24, v2, v26

    goto :goto_0
.end method

.method public static convertXYZtoCIELuv(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELuv;
    .locals 6
    .param p0, "xyz"    # Lorg/apache/sanselan/color/ColorXYZ;

    .prologue
    .line 848
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELuv(DDD)Lorg/apache/sanselan/color/ColorCIELuv;

    move-result-object v0

    return-object v0
.end method

.method public static final convertXYZtoHunterLab(DDD)Lorg/apache/sanselan/color/ColorHunterLab;
    .locals 12
    .param p0, "X"    # D
    .param p2, "Y"    # D
    .param p4, "Z"    # D

    .prologue
    .line 258
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v2, v0, v8

    .line 259
    .local v2, "L":D
    const-wide v0, 0x4031800000000000L    # 17.5

    const-wide v8, 0x3ff051eb851eb852L    # 1.02

    mul-double/2addr v8, p0

    sub-double/2addr v8, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    mul-double v4, v0, v8

    .line 260
    .local v4, "a":D
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    const-wide v8, 0x3feb1a9fbe76c8b4L    # 0.847

    mul-double v8, v8, p4

    sub-double v8, p2, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    mul-double v6, v0, v8

    .line 262
    .local v6, "b":D
    new-instance v1, Lorg/apache/sanselan/color/ColorHunterLab;

    invoke-direct/range {v1 .. v7}, Lorg/apache/sanselan/color/ColorHunterLab;-><init>(DDD)V

    return-object v1
.end method

.method public static final convertXYZtoHunterLab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorHunterLab;
    .locals 6
    .param p0, "xyz"    # Lorg/apache/sanselan/color/ColorXYZ;

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoHunterLab(DDD)Lorg/apache/sanselan/color/ColorHunterLab;

    move-result-object v0

    return-object v0
.end method

.method public static final convertXYZtoRGB(DDD)I
    .locals 24
    .param p0, "X"    # D
    .param p2, "Y"    # D
    .param p4, "Z"    # D

    .prologue
    .line 292
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v14, p0, v20

    .line 293
    .local v14, "var_X":D
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v16, p2, v20

    .line 294
    .local v16, "var_Y":D
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v18, p4, v20

    .line 296
    .local v18, "var_Z":D
    const-wide v20, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v20, v20, v14

    const-wide v22, -0x400767a0f9096bbaL    # -1.5372

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, -0x402016f0068db8bbL    # -0.4986

    mul-double v22, v22, v18

    add-double v12, v20, v22

    .line 297
    .local v12, "var_R":D
    const-wide v20, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v20, v20, v14

    const-wide v22, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3fa53f7ced916873L    # 0.0415

    mul-double v22, v22, v18

    add-double v10, v20, v22

    .line 298
    .local v10, "var_G":D
    const-wide v20, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v20, v20, v14

    const-wide v22, -0x4035e353f7ced917L    # -0.204

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v22, v22, v18

    add-double v8, v20, v22

    .line 300
    .local v8, "var_B":D
    const-wide v20, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v20, v12, v20

    if-lez v20, :cond_0

    .line 301
    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v22, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide v22, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v12, v20, v22

    .line 304
    :goto_0
    const-wide v20, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v20, v10, v20

    if-lez v20, :cond_1

    .line 305
    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v22, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-wide/from16 v0, v22

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide v22, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v10, v20, v22

    .line 308
    :goto_1
    const-wide v20, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v20, v8, v20

    if-lez v20, :cond_2

    .line 309
    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v22, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide v22, 0x3fac28f5c28f5c29L    # 0.055

    sub-double v8, v20, v22

    .line 313
    :goto_2
    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v2, v12, v20

    .line 314
    .local v2, "R":D
    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v4, v10, v20

    .line 315
    .local v4, "G":D
    const-wide v20, 0x406fe00000000000L    # 255.0

    mul-double v6, v8, v20

    .line 317
    .local v6, "B":D
    invoke-static/range {v2 .. v7}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v20

    return v20

    .line 303
    .end local v2    # "R":D
    .end local v4    # "G":D
    .end local v6    # "B":D
    :cond_0
    const-wide v20, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v12, v12, v20

    goto :goto_0

    .line 307
    :cond_1
    const-wide v20, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v10, v10, v20

    goto :goto_1

    .line 311
    :cond_2
    const-wide v20, 0x4029d70a3d70a3d7L    # 12.92

    mul-double v8, v8, v20

    goto :goto_2
.end method

.method public static final convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I
    .locals 6
    .param p0, "xyz"    # Lorg/apache/sanselan/color/ColorXYZ;

    .prologue
    .line 286
    iget-wide v0, p0, Lorg/apache/sanselan/color/ColorXYZ;->X:D

    iget-wide v2, p0, Lorg/apache/sanselan/color/ColorXYZ;->Y:D

    iget-wide v4, p0, Lorg/apache/sanselan/color/ColorXYZ;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method private static cube(D)D
    .locals 2
    .param p0, "f"    # D

    .prologue
    .line 692
    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static degree_2_radian(D)D
    .locals 4
    .param p0, "degree"    # D

    .prologue
    .line 838
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 36
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 28
    const/4 v2, 0x0

    .local v2, "C":I
    :goto_0
    const/16 v32, 0x100

    move/from16 v0, v32

    if-gt v2, v0, :cond_4

    .line 29
    const/4 v4, 0x0

    .local v4, "M":I
    :goto_1
    const/16 v32, 0x100

    move/from16 v0, v32

    if-gt v4, v0, :cond_3

    .line 30
    const/4 v5, 0x0

    .local v5, "Y":I
    :goto_2
    const/16 v32, 0x100

    move/from16 v0, v32

    if-gt v5, v0, :cond_2

    .line 31
    const/4 v3, 0x0

    .local v3, "K":I
    :goto_3
    const/16 v32, 0x100

    move/from16 v0, v32

    if-gt v3, v0, :cond_1

    .line 34
    const/16 v32, 0xff

    :try_start_0
    move/from16 v0, v32

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v32

    const/16 v33, 0xff

    move/from16 v0, v33

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v33

    const/16 v34, 0xff

    move/from16 v0, v34

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v34

    const/16 v35, 0xff

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v35

    invoke-static/range {v32 .. v35}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v27

    .line 37
    .local v27, "rgb1":I
    const/16 v32, 0xff

    move/from16 v0, v32

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v32

    const/16 v33, 0xff

    move/from16 v0, v33

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v33

    const/16 v34, 0xff

    move/from16 v0, v34

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v34

    const/16 v35, 0xff

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v35

    invoke-static/range {v32 .. v35}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB_old(IIII)I

    move-result v28

    .line 42
    .local v28, "rgb2":I
    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 44
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 45
    const-string v32, "C"

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 46
    const-string v32, "M"

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 47
    const-string v32, "Y"

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 48
    const-string v32, "K"

    move-object/from16 v0, v32

    invoke-static {v0, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 49
    const-string v32, "rgb1"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v32, "rgb2"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x40

    goto/16 :goto_3

    .line 30
    .end local v27    # "rgb1":I
    .end local v28    # "rgb2":I
    :cond_1
    add-int/lit8 v5, v5, 0x40

    goto/16 :goto_2

    .line 29
    .end local v3    # "K":I
    :cond_2
    add-int/lit8 v4, v4, 0x40

    goto/16 :goto_1

    .line 28
    .end local v5    # "Y":I
    :cond_3
    add-int/lit8 v2, v2, 0x40

    goto/16 :goto_0

    .line 56
    .end local v4    # "M":I
    :cond_4
    const/16 v32, 0xa

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    .line 68
    .local v29, "sample_rgbs":[I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    .line 70
    aget v26, v29, v25

    .line 74
    .local v26, "rgb":I
    invoke-static/range {v26 .. v26}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoXYZ(I)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v30

    .line 75
    .local v30, "xyz":Lorg/apache/sanselan/color/ColorXYZ;
    invoke-static/range {v30 .. v30}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I

    move-result v31

    .line 77
    .local v31, "xyz_rgb":I
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 78
    const-string v32, "rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v32, "xyz"

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v32, "xyz_rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const v32, 0xffffff

    and-int v32, v32, v31

    const v33, 0xffffff

    and-int v33, v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    .line 84
    const-string v32, "!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static/range {v32 .. v32}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 88
    :cond_5
    invoke-static/range {v30 .. v30}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object v6

    .line 89
    .local v6, "cielab":Lorg/apache/sanselan/color/ColorCIELab;
    invoke-static {v6}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoXYZ(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v7

    .line 91
    .local v7, "cielab_xyz":Lorg/apache/sanselan/color/ColorXYZ;
    invoke-static {v7}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I

    move-result v8

    .line 94
    .local v8, "cielab_xyz_rgb":I
    const-string v32, "cielab"

    move-object/from16 v0, v32

    invoke-static {v0, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v32, "cielab_xyz"

    move-object/from16 v0, v32

    invoke-static {v0, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v32, "cielab_xyz_rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const v32, 0xffffff

    and-int v32, v32, v8

    const v33, 0xffffff

    and-int v33, v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_6

    .line 99
    const-string v32, "!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static/range {v32 .. v32}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 103
    :cond_6
    invoke-static/range {v30 .. v30}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoHunterLab(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorHunterLab;

    move-result-object v22

    .line 105
    .local v22, "hunterlab":Lorg/apache/sanselan/color/ColorHunterLab;
    invoke-static/range {v22 .. v22}, Lorg/apache/sanselan/color/ColorConversions;->convertHunterLabtoXYZ(Lorg/apache/sanselan/color/ColorHunterLab;)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v23

    .line 107
    .local v23, "hunterlab_xyz":Lorg/apache/sanselan/color/ColorXYZ;
    invoke-static/range {v23 .. v23}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoRGB(Lorg/apache/sanselan/color/ColorXYZ;)I

    move-result v24

    .line 110
    .local v24, "hunterlab_xyz_rgb":I
    const-string v32, "hunterlab"

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v32, "hunterlab_xyz"

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v32, "hunterlab_xyz_rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const v32, 0xffffff

    and-int v32, v32, v24

    const v33, 0xffffff

    and-int v33, v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    .line 115
    const-string v32, "!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static/range {v32 .. v32}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 119
    :cond_7
    invoke-static/range {v26 .. v26}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoCMY(I)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object v13

    .line 120
    .local v13, "cmy":Lorg/apache/sanselan/color/ColorCMY;
    invoke-static {v13}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYtoCMYK(Lorg/apache/sanselan/color/ColorCMY;)Lorg/apache/sanselan/color/ColorCMYK;

    move-result-object v14

    .line 121
    .local v14, "cmyk":Lorg/apache/sanselan/color/ColorCMYK;
    invoke-static {v14}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoCMY(Lorg/apache/sanselan/color/ColorCMYK;)Lorg/apache/sanselan/color/ColorCMY;

    move-result-object v15

    .line 122
    .local v15, "cmyk_cmy":Lorg/apache/sanselan/color/ColorCMY;
    invoke-static {v15}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYtoRGB(Lorg/apache/sanselan/color/ColorCMY;)I

    move-result v16

    .line 125
    .local v16, "cmyk_cmy_rgb":I
    const-string v32, "cmy"

    move-object/from16 v0, v32

    invoke-static {v0, v13}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v32, "cmyk"

    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v32, "cmyk_cmy"

    move-object/from16 v0, v32

    invoke-static {v0, v15}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v32, "cmyk_cmy_rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const v32, 0xffffff

    and-int v32, v32, v16

    const v33, 0xffffff

    and-int v33, v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_8

    .line 131
    const-string v32, "!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static/range {v32 .. v32}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 135
    :cond_8
    invoke-static/range {v26 .. v26}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoHSL(I)Lorg/apache/sanselan/color/ColorHSL;

    move-result-object v18

    .line 136
    .local v18, "hsl":Lorg/apache/sanselan/color/ColorHSL;
    invoke-static/range {v18 .. v18}, Lorg/apache/sanselan/color/ColorConversions;->convertHSLtoRGB(Lorg/apache/sanselan/color/ColorHSL;)I

    move-result v19

    .line 138
    .local v19, "hsl_rgb":I
    const-string v32, "hsl"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v32, "hsl_rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const v32, 0xffffff

    and-int v32, v32, v19

    const v33, 0xffffff

    and-int v33, v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    .line 142
    const-string v32, "!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static/range {v32 .. v32}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 145
    :cond_9
    invoke-static/range {v26 .. v26}, Lorg/apache/sanselan/color/ColorConversions;->convertRGBtoHSV(I)Lorg/apache/sanselan/color/ColorHSV;

    move-result-object v20

    .line 146
    .local v20, "hsv":Lorg/apache/sanselan/color/ColorHSV;
    invoke-static/range {v20 .. v20}, Lorg/apache/sanselan/color/ColorConversions;->convertHSVtoRGB(Lorg/apache/sanselan/color/ColorHSV;)I

    move-result v21

    .line 148
    .local v21, "hsv_rgb":I
    const-string v32, "hsv"

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v32, "hsv_rgb"

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const v32, 0xffffff

    and-int v32, v32, v21

    const v33, 0xffffff

    and-int v33, v33, v26

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 152
    const-string v32, "!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static/range {v32 .. v32}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 156
    :cond_a
    invoke-static {v6}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoCIELCH(Lorg/apache/sanselan/color/ColorCIELab;)Lorg/apache/sanselan/color/ColorCIELCH;

    move-result-object v9

    .line 158
    .local v9, "cielch":Lorg/apache/sanselan/color/ColorCIELCH;
    invoke-static {v9}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELCHtoCIELab(Lorg/apache/sanselan/color/ColorCIELCH;)Lorg/apache/sanselan/color/ColorCIELab;

    move-result-object v10

    .line 161
    .local v10, "cielch_cielab":Lorg/apache/sanselan/color/ColorCIELab;
    const-string v32, "cielch"

    move-object/from16 v0, v32

    invoke-static {v0, v9}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v32, "cielch_cielab"

    move-object/from16 v0, v32

    invoke-static {v0, v10}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-static/range {v30 .. v30}, Lorg/apache/sanselan/color/ColorConversions;->convertXYZtoCIELuv(Lorg/apache/sanselan/color/ColorXYZ;)Lorg/apache/sanselan/color/ColorCIELuv;

    move-result-object v11

    .line 168
    .local v11, "cieluv":Lorg/apache/sanselan/color/ColorCIELuv;
    invoke-static {v11}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELuvtoXYZ(Lorg/apache/sanselan/color/ColorCIELuv;)Lorg/apache/sanselan/color/ColorXYZ;

    move-result-object v12

    .line 171
    .local v12, "cieluv_xyz":Lorg/apache/sanselan/color/ColorXYZ;
    const-string v32, "cieluv"

    move-object/from16 v0, v32

    invoke-static {v0, v11}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v32, "cieluv_xyz"

    move-object/from16 v0, v32

    invoke-static {v0, v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 177
    .end local v6    # "cielab":Lorg/apache/sanselan/color/ColorCIELab;
    .end local v7    # "cielab_xyz":Lorg/apache/sanselan/color/ColorXYZ;
    .end local v8    # "cielab_xyz_rgb":I
    .end local v9    # "cielch":Lorg/apache/sanselan/color/ColorCIELCH;
    .end local v10    # "cielch_cielab":Lorg/apache/sanselan/color/ColorCIELab;
    .end local v11    # "cieluv":Lorg/apache/sanselan/color/ColorCIELuv;
    .end local v12    # "cieluv_xyz":Lorg/apache/sanselan/color/ColorXYZ;
    .end local v13    # "cmy":Lorg/apache/sanselan/color/ColorCMY;
    .end local v14    # "cmyk":Lorg/apache/sanselan/color/ColorCMYK;
    .end local v15    # "cmyk_cmy":Lorg/apache/sanselan/color/ColorCMY;
    .end local v16    # "cmyk_cmy_rgb":I
    .end local v18    # "hsl":Lorg/apache/sanselan/color/ColorHSL;
    .end local v19    # "hsl_rgb":I
    .end local v20    # "hsv":Lorg/apache/sanselan/color/ColorHSV;
    .end local v21    # "hsv_rgb":I
    .end local v22    # "hunterlab":Lorg/apache/sanselan/color/ColorHunterLab;
    .end local v23    # "hunterlab_xyz":Lorg/apache/sanselan/color/ColorXYZ;
    .end local v24    # "hunterlab_xyz_rgb":I
    .end local v25    # "i":I
    .end local v26    # "rgb":I
    .end local v29    # "sample_rgbs":[I
    .end local v30    # "xyz":Lorg/apache/sanselan/color/ColorXYZ;
    .end local v31    # "xyz_rgb":I
    :catch_0
    move-exception v17

    .line 179
    .local v17, "e":Ljava/lang/Throwable;
    invoke-static/range {v17 .. v17}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 181
    .end local v17    # "e":Ljava/lang/Throwable;
    :cond_b
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1000000
        -0x10000
        -0xff0100
        -0xffff01
        -0xff01
        -0xf0100
        -0xff0001
        0x0
        -0x808081
    .end array-data
.end method

.method public static radian_2_degree(D)D
    .locals 4
    .param p0, "radian"    # D

    .prologue
    .line 843
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static square(D)D
    .locals 2
    .param p0, "f"    # D

    .prologue
    .line 697
    mul-double v0, p0, p0

    return-wide v0
.end method
