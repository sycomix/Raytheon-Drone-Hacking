.class public Lcom/parrot/freeflight/view/ViewPagerIndicator;
.super Landroid/view/View;
.source "ViewPagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final SPACING:I = 0x3


# instance fields
.field private mCurrentPage:I

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private mRadius:F

.field private mSnapPage:I

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 36
    iput v3, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mTotalCount:I

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    const v1, 0x7f0e00eb

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    const v1, 0x7f0e00ea

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    .line 64
    const v0, 0x106000d

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setBackgroundColor(I)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    const/16 v1, 0x55

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    .line 70
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mTotalCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mTotalCount:I

    .line 102
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mTotalCount:I

    return v0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 170
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 171
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 173
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1

    .line 175
    move v1, v3

    .line 185
    .local v1, "result":I
    :cond_0
    :goto_0
    return v1

    .line 178
    .end local v1    # "result":I
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getCount()I

    move-result v0

    .line 179
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 181
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_0

    .line 182
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 198
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 200
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 202
    move v0, v2

    .line 211
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 205
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 207
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 208
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getRadius()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 127
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v14, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getCount()I

    move-result v14

    if-lez v14, :cond_0

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getCount()I

    move-result v1

    .line 131
    .local v1, "count":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mCurrentPage:I

    if-lt v14, v1, :cond_1

    .line 132
    add-int/lit8 v14, v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setCurrentItem(I)V

    .line 155
    .end local v1    # "count":I
    :cond_0
    return-void

    .line 134
    .restart local v1    # "count":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getWidth()I

    move-result v9

    .line 135
    .local v9, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingLeft()I

    move-result v8

    .line 136
    .local v8, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingRight()I

    move-result v7

    .line 137
    .local v7, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->getPaddingTop()I

    move-result v13

    .line 139
    .local v13, "shortPaddingBefore":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float v11, v14, v15

    .line 140
    .local v11, "shift":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    add-float v12, v14, v15

    .line 141
    .local v12, "shortOffset":F
    int-to-float v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    add-float v6, v14, v15

    .line 142
    .local v6, "longOffset":F
    sub-int v14, v9, v8

    sub-int/2addr v14, v7

    int-to-float v14, v14

    add-int/lit8 v15, v1, -0x1

    int-to-float v15, v15

    mul-float/2addr v15, v11

    const/high16 v16, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v6, v14

    .line 145
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mSnapPage:I

    if-ne v5, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 147
    .local v10, "paintToUse":Landroid/graphics/Paint;
    :goto_1
    int-to-float v14, v5

    mul-float v2, v14, v11

    .line 148
    .local v2, "cx":F
    add-float v3, v6, v2

    .line 149
    .local v3, "dX":F
    move v4, v12

    .line 150
    .local v4, "dY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v14, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "cx":F
    .end local v3    # "dX":F
    .end local v4    # "dY":F
    .end local v10    # "paintToUse":Landroid/graphics/Paint;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setMeasuredDimension(II)V

    .line 160
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 217
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mCurrentPage:I

    .line 222
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->invalidate()V

    .line 223
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mCurrentPage:I

    .line 228
    iput p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mSnapPage:I

    .line 229
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->invalidate()V

    .line 230
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 234
    move-object v0, p1

    check-cast v0, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;

    .line 235
    .local v0, "savedState":Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 236
    iget v1, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mCurrentPage:I

    .line 237
    iget v1, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mSnapPage:I

    .line 238
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->requestLayout()V

    .line 239
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 244
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 245
    .local v0, "savedState":Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;
    iget v2, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/parrot/freeflight/view/ViewPagerIndicator$SavedState;->currentPage:I

    .line 246
    return-object v0
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "totalCount"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mTotalCount:I

    .line 107
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setVisibility(I)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerAdapter has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mCurrentPage:I

    .line 115
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->invalidate()V

    .line 116
    return-void
.end method

.method public setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "pagerAdapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eq v0, p1, :cond_0

    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->invalidate()V

    .line 96
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/parrot/freeflight/view/ViewPagerIndicator;->mRadius:F

    .line 84
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->invalidate()V

    .line 85
    return-void
.end method
