.class public Lcom/parrot/freeflight/view/PieChart;
.super Landroid/view/View;
.source "PieChart.java"


# static fields
.field private static final ANIMATION_DELAY_MS:J = 0x64L

.field private static final ANIMATION_DURATION_MS:J = 0x7d0L

.field private static final MAX_ANGLE:F = 360.0f

.field private static final MIN_ANGLE:F = 0.0f

.field private static final PIE_CHART_STARTING_POINT:F = 270.0f


# instance fields
.field private mAngle:F

.field private mAngleAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAngleToDraw:F

.field private mAnimated:Z

.field private mColor:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPiePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRectF:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondSegmentPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSegment:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSecondSegmentPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSecondSegmentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSecondSegmentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSecondSegmentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/parrot/freeflight/view/PieChart;->setFakeData()V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/view/PieChart;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/view/PieChart;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleToDraw:F

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/view/PieChart;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/view/PieChart;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/parrot/freeflight/view/PieChart;->mAnimated:Z

    return p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/view/PieChart;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/view/PieChart;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private drawAngle(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v2, 0x43870000    # 270.0f

    const/4 v6, 0x0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget v0, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleToDraw:F

    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    aget v1, v1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleToDraw:F

    iget-object v5, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    aget v3, v0, v6

    iget-object v5, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 177
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    aget v0, v0, v6

    add-float/2addr v2, v0

    iget v0, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleToDraw:F

    iget-object v3, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    aget v3, v3, v6

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/parrot/freeflight/view/PieChart;->mSecondSegmentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawSegments(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mColor:[I

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    const/high16 v2, 0x43870000    # 270.0f

    .line 162
    .local v2, "segStartPoint":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mColor:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    aget v3, v0, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    aget v0, v0, v6

    add-float/2addr v2, v0

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "segStartPoint":F
    .end local v6    # "i":I
    :cond_0
    return-void
.end method

.method private getPieSegment([F)[F
    .locals 5
    .param p1, "data"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    array-length v3, p1

    new-array v1, v3, [F

    .line 81
    .local v1, "segValues":[F
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/PieChart;->getTotal([F)F

    move-result v2

    .line 82
    .local v2, "total":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 83
    aget v3, p1, v0

    div-float/2addr v3, v2

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    aput v3, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method

.method private getTotal([F)F
    .locals 4
    .param p1, "data"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "total":F
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 91
    .local v1, "val":F
    add-float/2addr v0, v1

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "val":F
    :cond_0
    return v0
.end method

.method private setAngle(F)V
    .locals 7
    .param p1, "angle"    # F

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    .line 97
    invoke-static {p1, v5, v6}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngle:F

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAnimated:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/parrot/freeflight/view/PieChart;->mAngle:F

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    .line 103
    iget v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngle:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 104
    .local v0, "changeInValue":F
    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float v4, v0, v6

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 106
    .local v2, "durationToUse":J
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/parrot/freeflight/view/PieChart$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/view/PieChart$1;-><init>(Lcom/parrot/freeflight/view/PieChart;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/parrot/freeflight/view/PieChart$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/view/PieChart$2;-><init>(Lcom/parrot/freeflight/view/PieChart;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    .end local v0    # "changeInValue":F
    .end local v2    # "durationToUse":J
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->invalidate()V

    .line 140
    return-void

    .line 137
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngle:F

    iput v1, p0, Lcom/parrot/freeflight/view/PieChart;->mAngleToDraw:F

    goto :goto_0
.end method

.method private setFakeData()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 184
    const/16 v6, 0x21b0

    .line 185
    .local v6, "totalSizeInMByte":I
    const/16 v7, 0x145d

    .line 187
    .local v7, "usedSizeInMByte":I
    const/16 v8, 0xd53

    int-to-float v5, v8

    .line 189
    .local v5, "remainingSizeInMb":F
    new-array v4, v12, [F

    int-to-float v8, v7

    aput v8, v4, v10

    aput v5, v4, v11

    .line 192
    .local v4, "data":[F
    const v0, 0x7f0e0096

    .line 199
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 200
    .local v2, "colorUsed":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0e0094

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 201
    .local v1, "colorNonUsed":I
    new-array v3, v12, [I

    aput v2, v3, v10

    aput v1, v3, v11

    .line 202
    .local v3, "colors":[I
    invoke-virtual {p0, v4, v3}, Lcom/parrot/freeflight/view/PieChart;->setData([F[I)V

    .line 204
    .end local v0    # "color":I
    .end local v1    # "colorNonUsed":I
    .end local v2    # "colorUsed":I
    .end local v3    # "colors":[I
    .end local v4    # "data":[F
    .end local v5    # "remainingSizeInMb":F
    .end local v6    # "totalSizeInMByte":I
    .end local v7    # "usedSizeInMByte":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mColor:[I

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/PieChart;->drawAngle(Landroid/graphics/Canvas;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/PieChart;->drawSegments(Landroid/graphics/Canvas;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/PieChart;->mAnimated:Z

    if-nez v0, :cond_2

    .line 150
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/PieChart;->drawSegments(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/PieChart;->drawAngle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setData([F[I)V
    .locals 5
    .param p1, "data"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation

        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x43b40000    # 360.0f

    .line 64
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 65
    iput-object p2, p0, Lcom/parrot/freeflight/view/PieChart;->mColor:[I

    .line 66
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/PieChart;->getPieSegment([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSegment:[F

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/view/PieChart;->mAngle:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 68
    iput-boolean v4, p0, Lcom/parrot/freeflight/view/PieChart;->mAnimated:Z

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mPiePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mColor:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/view/PieChart;->mSecondSegmentPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/parrot/freeflight/view/PieChart;->mColor:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/view/PieChart;->setAngle(F)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/PieChart;->invalidate()V

    goto :goto_0
.end method
