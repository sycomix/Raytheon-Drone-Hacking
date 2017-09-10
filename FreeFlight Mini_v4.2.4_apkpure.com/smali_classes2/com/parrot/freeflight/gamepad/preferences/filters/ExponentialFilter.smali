.class public Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;
.super Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
.source "ExponentialFilter.java"


# static fields
.field private static final DEFAULT_COEFF_X:F = 0.0f

.field private static final DEFAULT_COEFF_Y:F = 1.0f


# instance fields
.field private mCpX:F

.field private mCpY:F

.field private mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;-><init>(I)V

    .line 30
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->setCoeffs(FF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "cpx"    # F
    .param p2, "cpy"    # F

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;-><init>(I)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->setCoeffs(FF)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 14
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;-><init>(I)V

    .line 16
    :try_start_0
    const-string v2, ";"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "src":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->setCoeffs(FF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v1    # "src":[Ljava/lang/String;
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateSaveString(FF)Ljava/lang/String;
    .locals 2
    .param p0, "cpx"    # F
    .param p1, "cpy"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ARXF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(F)F
    .locals 12
    .param p1, "initialValue"    # F

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 73
    iget-boolean v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mValid:Z

    if-nez v3, :cond_0

    .line 91
    .end local p1    # "initialValue":F
    :goto_0
    return p1

    .line 77
    .restart local p1    # "initialValue":F
    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v1, 0x1

    .line 79
    .local v1, "positive":Z
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 82
    .local v0, "absx":F
    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    iget v6, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    .line 83
    move v2, v0

    .line 91
    .local v2, "ret":F
    :goto_2
    if-eqz v1, :cond_4

    .end local v2    # "ret":F
    :goto_3
    move p1, v2

    goto :goto_0

    .line 77
    .end local v0    # "absx":F
    .end local v1    # "positive":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 84
    .restart local v0    # "absx":F
    .restart local v1    # "positive":Z
    :cond_2
    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    .line 85
    mul-float v3, v11, v0

    sub-float v6, v10, v0

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    mul-float/2addr v3, v6

    mul-float v6, v0, v0

    add-float v2, v3, v6

    .restart local v2    # "ret":F
    goto :goto_2

    .line 87
    .end local v2    # "ret":F
    :cond_3
    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    iget v6, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    mul-float/2addr v6, v11

    sub-float v6, v10, v6

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    float-to-double v8, v3

    sub-double/2addr v6, v8

    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    mul-float/2addr v3, v11

    sub-float v3, v10, v3

    float-to-double v8, v3

    div-double v4, v6, v8

    .line 88
    .local v4, "t":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v4

    mul-double/2addr v6, v8

    iget v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    float-to-double v8, v3

    mul-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    double-to-float v2, v6

    .restart local v2    # "ret":F
    goto :goto_2

    .line 91
    .end local v4    # "t":D
    :cond_4
    neg-float v2, v2

    goto :goto_3
.end method

.method public getCpX()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    return v0
.end method

.method public getCpY()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mValid:Z

    return v0
.end method

.method public setCoeffs(FF)V
    .locals 3
    .param p1, "initialCPx"    # F
    .param p2, "initialCPy"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 57
    iput p1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    .line 58
    iput p2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    .line 59
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mValid:Z

    .line 63
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toSaveString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpX:F

    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->mCpY:F

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->generateSaveString(FF)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
