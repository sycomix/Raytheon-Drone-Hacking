.class public Lcom/parrot/freeflight/util/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# static fields
.field private static final R_EARTH:F = 6371000.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeAngle(FFFF)F
    .locals 12
    .param p0, "vec1X"    # F
    .param p1, "vec1Y"    # F
    .param p2, "vec2X"    # F
    .param p3, "vec2Y"    # F

    .prologue
    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, "res":F
    mul-float v4, p0, p3

    mul-float v5, p2, p1

    sub-float v1, v4, v5

    .line 92
    .local v1, "det":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 93
    mul-float v4, p0, p2

    mul-float v5, p1, p3

    add-float v2, v4, v5

    .line 94
    .local v2, "num":F
    float-to-double v4, p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    float-to-double v6, p2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, p3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 96
    .local v0, "den":F
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-float v6, v2, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 98
    .end local v0    # "den":F
    .end local v2    # "num":F
    :cond_0
    const/high16 v4, 0x7fc00000    # NaNf

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    .line 99
    const/4 v3, 0x0

    .line 101
    :cond_1
    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v4, v3

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    return v4
.end method

.method public static computeYaw(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 14
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide v12, 0x41584dae00000000L    # 6371000.0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    .line 79
    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v8, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double v0, v6, v12

    .line 80
    .local v0, "dx":D
    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v8, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    iget-wide v8, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 82
    .local v2, "dy":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 83
    .local v4, "yaw":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    add-double/2addr v4, v10

    .line 84
    :cond_0
    sub-double v6, v10, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    return v6
.end method

.method public static dist(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 69
    sub-float v0, p2, p0

    .line 70
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 71
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 4
    .param p0, "p1"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "p2"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/parrot/freeflight/util/Geometry;->dist(FFFF)F

    move-result v0

    return v0
.end method

.method public static distanceToSegment(FFFFFFF)F
    .locals 24
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "radius"    # F

    .prologue
    .line 28
    new-instance v14, Landroid/graphics/PointF;

    sub-float v17, p4, p2

    sub-float v18, p5, p3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    .local v14, "vectorAB":Landroid/graphics/PointF;
    new-instance v15, Landroid/graphics/PointF;

    sub-float v17, p0, p2

    sub-float v18, p1, p3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 30
    .local v15, "vectorAC":Landroid/graphics/PointF;
    new-instance v16, Landroid/graphics/PointF;

    sub-float v17, p0, p4

    sub-float v18, p1, p5

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    .line 32
    .local v16, "vectorBC":Landroid/graphics/PointF;
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v8, v0

    .line 33
    .local v8, "normeVectorProduct":D
    const-wide/16 v18, 0x0

    cmpg-double v17, v8, v18

    if-gez v17, :cond_0

    .line 34
    neg-double v8, v8

    .line 36
    :cond_0
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 38
    .local v6, "normeABVector":D
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v10, v0

    .line 39
    .local v10, "pscal1":D
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v12, v0

    .line 40
    .local v12, "pscal2":D
    const-wide/16 v18, 0x0

    cmpg-double v17, v10, v18

    if-ltz v17, :cond_1

    const-wide/16 v18, 0x0

    cmpg-double v17, v12, v18

    if-ltz v17, :cond_1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v17

    if-nez v17, :cond_1

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 41
    :cond_1
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 43
    :cond_2
    div-double v18, v8, v6

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    return v17
.end method

.method public static distanceToSegment(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;F)F
    .locals 7
    .param p0, "point"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "segmentPointA"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "segmentPointB"    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "radius"    # F

    .prologue
    .line 24
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/parrot/freeflight/util/Geometry;->distanceToSegment(FFFFFFF)F

    move-result v0

    return v0
.end method

.method public static findPointProjectionOnSegment(FFFFFF)Landroid/graphics/PointF;
    .locals 12
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F

    .prologue
    .line 51
    sub-float v1, p4, p2

    .line 52
    .local v1, "vecABx":F
    sub-float v2, p5, p3

    .line 53
    .local v2, "vecABy":F
    sub-float v3, p0, p2

    sub-float v4, p4, p2

    mul-float/2addr v3, v4

    sub-float v4, p1, p3

    sub-float v5, p5, p3

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 54
    .local v0, "pPosAlongAB":F
    new-instance v3, Landroid/graphics/PointF;

    mul-float v4, v0, v1

    add-float/2addr v4, p2

    mul-float v5, v0, v2

    add-float/2addr v5, p3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public static pointInsideCircle(FFFFF)Z
    .locals 1
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "radius"    # F

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/parrot/freeflight/util/Geometry;->dist(FFFF)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pointInsideCircle(Landroid/graphics/Point;Landroid/graphics/Point;F)Z
    .locals 4
    .param p0, "point"    # Landroid/graphics/Point;
    .param p1, "center"    # Landroid/graphics/Point;
    .param p2, "radius"    # F

    .prologue
    .line 61
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3, p2}, Lcom/parrot/freeflight/util/Geometry;->pointInsideCircle(FFFFF)Z

    move-result v0

    return v0
.end method
