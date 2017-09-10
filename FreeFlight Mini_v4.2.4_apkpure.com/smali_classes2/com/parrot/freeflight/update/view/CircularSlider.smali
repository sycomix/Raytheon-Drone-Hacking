.class public Lcom/parrot/freeflight/update/view/CircularSlider;
.super Landroid/view/View;
.source "CircularSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;,
        Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BLINK_DELAY:I = 0x1f4

.field private static final CIRCULARSLIDER_DEFAULT_FORMAT_STRING:Ljava/lang/String; = "#0.0"

.field private static final CIRCULAR_KEY_ARROW_MARGIN:I = 0x5

.field private static final CIRCULAR_KEY_INCREMENT_DEFAULT_VALUE:F = 0.01f

.field private static final CIRCULAR_MAXIMUM_DEFAULT_VALUE:D = 1.0

.field private static final CIRCULAR_MINIMUM_DEFAULT_VALUE:D = 0.0

.field private static final CIRCULAR_RING_THICK_RATIO:F = 0.23f

.field private static final CIRCULAR_SLIDER_TEXT_FONTSIZE_MAX:I = 0xa

.field private static final CIRCULAR_SLIDER_VALUE_FONTSIZE_MAX:I = 0x1e

.field private static final CIRCULAR_START_ANGLE:I = 0x10e

.field private static final CIRCULAR_STROCK_VALUE:I = 0x5

.field private static final TEXT_WIDTH_RATIO:F = 0.65f


# instance fields
.field private blinkRunnable:Ljava/lang/Runnable;

.field private mAllowMove:Z

.field private mAngle:D

.field private mArrowMargin:I

.field private mBlinkOn:Z

.field private mChangeListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;

.field private mCopyPaint:Landroid/graphics/Paint;

.field private mCurrentEmptyColor:I

.field private mCurrentFilledColor:I

.field private mCurrentTextColor:I

.field private mCurrentValue:D

.field private mCurrentValueTextColor:I

.field private mCx:F

.field private mCy:F

.field private mDisplayValue:Ljava/lang/String;

.field private mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

.field private mEmptyCirclePaint:Landroid/graphics/Paint;

.field private mEmptyColorStateList:Landroid/content/res/ColorStateList;

.field private mFilledCirclePaint:Landroid/graphics/Paint;

.field private mFilledColorStateList:Landroid/content/res/ColorStateList;

.field private mInnerColor:Landroid/graphics/Paint;

.field private mInnerRadius:F

.field private mKeyEditMode:Z

.field private mKeyIncrement:F

.field private mMaximumValue:D

.field private mMinimumValue:D

.field private mOffBitmap:Landroid/graphics/Bitmap;

.field private final mOffCanvas:Landroid/graphics/Canvas;

.field private mOuterRadius:F

.field private final mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mRect:Landroid/graphics/RectF;

.field private mTextCaps:Z

.field private mTextColorStateList:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTitle:Ljava/lang/String;

.field private mUnit:Ljava/lang/String;

.field private mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mValueDecimalFormat:Ljava/text/DecimalFormat;

.field private mValueTextColorStateList:Landroid/content/res/ColorStateList;

.field private mValueTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    .line 121
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mBlinkOn:Z

    .line 131
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    new-instance v5, Lcom/parrot/freeflight/update/view/CircularSlider$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/update/view/CircularSlider$1;-><init>(Lcom/parrot/freeflight/update/view/CircularSlider;)V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->blinkRunnable:Ljava/lang/Runnable;

    .line 179
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    .line 180
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/parrot/freeflight/update/view/CircularSlider;->setLayerType(ILandroid/graphics/Paint;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 184
    .local v4, "upArrowSrcDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 187
    .local v2, "downArrowSrcDrawable":Landroid/graphics/drawable/Drawable;
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    .line 188
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    .line 190
    iget-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    iput-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    .line 191
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    .line 193
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/update/view/CircularSlider;->setClickable(Z)V

    .line 194
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/update/view/CircularSlider;->setFocusable(Z)V

    .line 195
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/update/view/CircularSlider;->setFocusableInTouchMode(Z)V

    .line 197
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 198
    .local v3, "otherSymbols":Ljava/text/DecimalFormatSymbols;
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 199
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.0"

    invoke-direct {v5, v6, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueDecimalFormat:Ljava/text/DecimalFormat;

    .line 201
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 202
    .local v1, "density":F
    const v5, 0x3c23d70a    # 0.01f

    iput v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyIncrement:F

    .line 203
    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mArrowMargin:I

    .line 205
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDisplayValue:Ljava/lang/String;

    .line 207
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mRect:Landroid/graphics/RectF;

    .line 209
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledCirclePaint:Landroid/graphics/Paint;

    .line 210
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    .line 211
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyCirclePaint:Landroid/graphics/Paint;

    .line 212
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    .line 213
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    .line 214
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCopyPaint:Landroid/graphics/Paint;

    .line 216
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffCanvas:Landroid/graphics/Canvas;

    .line 217
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 219
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 220
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 222
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 223
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledCirclePaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyCirclePaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 228
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 229
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 231
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledCirclePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyCirclePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 235
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 237
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledCirclePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    if-eqz p2, :cond_1

    .line 240
    sget-object v5, Lcom/parrot/freeflight/R$styleable;->CircularSlider:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    .local v0, "customAttributes":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextColorStateList:Landroid/content/res/ColorStateList;

    .line 242
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextColorStateList:Landroid/content/res/ColorStateList;

    .line 243
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledColorStateList:Landroid/content/res/ColorStateList;

    .line 244
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyColorStateList:Landroid/content/res/ColorStateList;

    .line 245
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    .line 246
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextCaps:Z

    .line 248
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    .end local v0    # "customAttributes":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextColorStateList:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_2

    .line 252
    const/4 v5, -0x1

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextColorStateList:Landroid/content/res/ColorStateList;

    .line 255
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextColorStateList:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_3

    .line 256
    const v5, -0xffff01

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextColorStateList:Landroid/content/res/ColorStateList;

    .line 259
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledColorStateList:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_4

    .line 260
    const v5, -0xffff01

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledColorStateList:Landroid/content/res/ColorStateList;

    .line 263
    :cond_4
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyColorStateList:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    .line 264
    const/16 v5, 0x77

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyColorStateList:Landroid/content/res/ColorStateList;

    .line 267
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 268
    const-string v5, "Title"

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    .line 269
    const-string v5, "20"

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDisplayValue:Ljava/lang/String;

    .line 270
    const-string v5, "\u00b0"

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUnit:Ljava/lang/String;

    .line 272
    :cond_6
    if-eqz v4, :cond_7

    .line 273
    invoke-static {v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 277
    :cond_7
    if-eqz v2, :cond_8

    .line 278
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v5, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v5, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 281
    :cond_8
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->updateColors()V

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/update/view/CircularSlider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/CircularSlider;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mBlinkOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/update/view/CircularSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/CircularSlider;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mBlinkOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/update/view/CircularSlider;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/update/view/CircularSlider;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->blinkRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private determineMaxTextSize(Ljava/lang/String;F)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "maxWidth"    # F

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, "size":I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 684
    .local v0, "paint":Landroid/graphics/Paint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 685
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    .line 687
    return v1
.end method

.method private setKeyEditMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    .line 814
    if-eqz p1, :cond_1

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mBlinkOn:Z

    .line 816
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    invoke-interface {v0, p0}, Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;->onEditionStart(Lcom/parrot/freeflight/update/view/CircularSlider;)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->blinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->post(Ljava/lang/Runnable;)Z

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    .line 828
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    invoke-interface {v0, p0}, Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;->onEditionEnd(Lcom/parrot/freeflight/update/view/CircularSlider;)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->blinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 841
    const/4 v1, 0x0

    .line 842
    .local v1, "invalidate":Z
    iget-object v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 843
    .local v0, "color":I
    iget v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentTextColor:I

    if-eq v0, v2, :cond_0

    .line 844
    iput v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentTextColor:I

    .line 845
    const/4 v1, 0x1

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 849
    iget v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValueTextColor:I

    if-eq v0, v2, :cond_1

    .line 850
    iput v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValueTextColor:I

    .line 851
    const/4 v1, 0x1

    .line 854
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 855
    iget v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentFilledColor:I

    if-eq v0, v2, :cond_2

    .line 856
    iput v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentFilledColor:I

    .line 857
    const/4 v1, 0x1

    .line 860
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 861
    iget v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentEmptyColor:I

    if-eq v0, v2, :cond_3

    .line 862
    iput v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentEmptyColor:I

    .line 863
    const/4 v1, 0x1

    .line 866
    :cond_3
    if-eqz v1, :cond_4

    .line 867
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    .line 869
    :cond_4
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 651
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 652
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getDrawableState()[I

    move-result-object v0

    .line 654
    .local v0, "state":[I
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 658
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->updateColors()V

    .line 659
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    .line 660
    return-void
.end method

.method public getCurrentValue()D
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    return-wide v0
.end method

.method public getKeyIncrementStep()F
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyIncrement:F

    return v0
.end method

.method public getMaximumValue()D
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    return-wide v0
.end method

.method public getMinimumValue()D
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    return-wide v0
.end method

.method public getOnEditionListener()Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    return-object v0
.end method

.method public getOnValueChangeListener()Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mChangeListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 665
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 666
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 670
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 562
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffBitmap:Landroid/graphics/Bitmap;

    .line 564
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentFilledColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentEmptyColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValueTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mRect:Landroid/graphics/RectF;

    const-wide v4, 0x4070e00000000000L    # 270.0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    add-double/2addr v4, v6

    double-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    double-to-float v6, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEmptyCirclePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mRect:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    double-to-float v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mFilledCirclePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCx:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCy:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerRadius:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerColor:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOffBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCopyPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v17, v2, 0x2

    .line 587
    .local v17, "xPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDisplayValue:Ljava/lang/String;

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueDecimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUnit:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUnit:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 589
    .local v16, "valueString":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v18, v2, 0x2

    .line 591
    .local v18, "yPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 592
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 598
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mBlinkOn:Z

    if-eqz v2, :cond_3

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    .line 601
    .local v12, "upArrowLeft":I
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mArrowMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v14, v2

    .line 602
    .local v14, "upArrowTopAboveText":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerRadius:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mArrowMargin:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v15, v2

    .line 603
    .local v15, "upArrowTopBelowCircle":I
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 605
    .local v13, "upArrowTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v2, v3

    .line 606
    .local v8, "downArrowLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getHeight()I

    move-result v2

    sub-int/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int v9, v2, v3

    .line 610
    .local v9, "downArrowTop":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v13

    invoke-virtual {v2, v12, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUpArrowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 616
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v2, v8, v9, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDownArrowDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 622
    .end local v8    # "downArrowLeft":I
    .end local v9    # "downArrowTop":I
    .end local v12    # "upArrowLeft":I
    .end local v13    # "upArrowTop":I
    .end local v14    # "upArrowTopAboveText":I
    .end local v15    # "upArrowTopBelowCircle":I
    :cond_3
    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 629
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextCaps:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 630
    .local v11, "text":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v3, v4

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v11, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 632
    .local v10, "ellipsizedTitle":Ljava/lang/String;
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 634
    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 637
    .end local v10    # "ellipsizedTitle":Ljava/lang/String;
    .end local v11    # "text":Ljava/lang/String;
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 638
    return-void

    .line 587
    .end local v16    # "valueString":Ljava/lang/String;
    .end local v18    # "yPos":I
    :cond_5
    const-string v2, ""

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDisplayValue:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 594
    .restart local v16    # "valueString":Ljava/lang/String;
    .restart local v18    # "yPos":I
    :cond_7
    move/from16 v0, v18

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    goto/16 :goto_2

    .line 629
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 832
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 833
    if-nez p1, :cond_0

    .line 834
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/update/view/CircularSlider;->setKeyEditMode(Z)V

    .line 837
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 756
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    sparse-switch p1, :sswitch_data_0

    .line 808
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_1
    :goto_0
    return v3

    .line 759
    :sswitch_0
    iget-boolean v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/update/view/CircularSlider;->setKeyEditMode(Z)V

    goto :goto_0

    .line 763
    :sswitch_1
    iget-boolean v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-eqz v4, :cond_0

    .line 764
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/update/view/CircularSlider;->setKeyEditMode(Z)V

    goto :goto_0

    .line 770
    :sswitch_2
    iget-boolean v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 776
    :sswitch_3
    iget-boolean v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 782
    :sswitch_4
    iget-boolean v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-eqz v2, :cond_0

    .line 783
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    iget-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1

    .line 784
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    iget v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyIncrement:F

    float-to-double v6, v2

    sub-double v0, v4, v6

    .line 785
    .local v0, "newValue":D
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    cmpg-double v2, v0, v4

    if-gez v2, :cond_3

    .line 786
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    .line 787
    :cond_3
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    cmpl-double v2, v0, v4

    if-eqz v2, :cond_1

    .line 788
    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    goto :goto_0

    .line 795
    .end local v0    # "newValue":D
    :sswitch_5
    iget-boolean v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyEditMode:Z

    if-eqz v2, :cond_0

    .line 796
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    iget-wide v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    .line 797
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    iget v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyIncrement:F

    float-to-double v6, v2

    add-double v0, v4, v6

    .line 798
    .restart local v0    # "newValue":D
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    cmpl-double v2, v0, v4

    if-lez v2, :cond_4

    .line 799
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    .line 800
    :cond_4
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    cmpl-double v2, v0, v4

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setValue(D)V

    goto :goto_0

    .line 757
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 525
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 526
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 528
    .local v1, "height":I
    if-le v6, v1, :cond_0

    move v4, v1

    .line 530
    .local v4, "size":I
    :goto_0
    if-le v6, v1, :cond_1

    .line 531
    move v6, v1

    .line 536
    :goto_1
    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    iput v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCx:F

    .line 537
    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    iput v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCy:F

    .line 538
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    iput v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    .line 540
    iget v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    const v8, 0x3f451eb8    # 0.77f

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerRadius:F

    .line 542
    iget v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCx:F

    iget v8, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    sub-float v2, v7, v8

    .line 543
    .local v2, "left":F
    iget v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCx:F

    iget v8, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    add-float v3, v7, v8

    .line 544
    .local v3, "right":F
    iget v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCy:F

    iget v8, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    sub-float v5, v7, v8

    .line 545
    .local v5, "top":F
    iget v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCy:F

    iget v8, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    add-float v0, v7, v8

    .line 547
    .local v0, "bottom":F
    iget-object v7, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 549
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 550
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 552
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 553
    return-void

    .end local v0    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "right":F
    .end local v4    # "size":I
    .end local v5    # "top":F
    :cond_0
    move v4, v6

    .line 528
    goto :goto_0

    .line 533
    .restart local v4    # "size":I
    :cond_1
    move v1, v6

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v10, 0x1

    const-wide v8, 0x4076800000000000L    # 360.0

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 696
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 697
    .local v3, "y":F
    iget v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCx:F

    sub-float v4, v2, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCy:F

    sub-float v6, v3, v6

    float-to-double v6, v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 698
    .local v1, "distance":F
    iget v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCx:F

    sub-float v4, v2, v4

    float-to-double v4, v4

    iget v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCy:F

    sub-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    add-double/2addr v4, v8

    double-to-float v4, v4

    float-to-double v4, v4

    rem-double/2addr v4, v8

    double-to-float v0, v4

    .line 700
    .local v0, "currentAngle":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 751
    :cond_0
    :goto_0
    return v10

    .line 702
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAllowMove:Z

    if-eqz v4, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 704
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 706
    :cond_1
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_6

    .line 707
    cmpl-float v4, v0, v11

    if-ltz v4, :cond_2

    const/high16 v4, 0x42b40000    # 90.0f

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_5

    .line 708
    :cond_2
    float-to-double v4, v0

    iput-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    .line 720
    :cond_3
    :goto_1
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    div-double/2addr v4, v8

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMaximumValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMinimumValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_4

    .line 721
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMinimumValue()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMaximumValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    iput-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    .line 723
    :cond_4
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    invoke-virtual {p0, v4, v5}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    .line 724
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    goto :goto_0

    .line 710
    :cond_5
    iput-wide v8, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    goto :goto_1

    .line 712
    :cond_6
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    .line 713
    const/high16 v4, 0x43870000    # 270.0f

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_3

    cmpg-float v4, v0, v11

    if-ltz v4, :cond_3

    .line 714
    float-to-double v4, v0

    iput-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    goto :goto_1

    .line 717
    :cond_7
    float-to-double v4, v0

    iput-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    goto :goto_1

    .line 729
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    float-to-double v4, v1

    iget v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mOuterRadius:F

    float-to-double v6, v6

    const-wide v8, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    float-to-double v4, v1

    iget v6, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mInnerRadius:F

    float-to-double v6, v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 730
    iput-boolean v10, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAllowMove:Z

    .line 731
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 732
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 733
    :cond_8
    float-to-double v4, v0

    iput-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    .line 734
    iget-wide v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    invoke-virtual {p0, v4, v5}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    .line 735
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    goto/16 :goto_0

    .line 740
    :pswitch_2
    iget-boolean v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAllowMove:Z

    if-eqz v4, :cond_9

    .line 741
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->performClick()Z

    .line 742
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAllowMove:Z

    .line 744
    :cond_9
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    goto/16 :goto_0

    .line 747
    :pswitch_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    goto/16 :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setAngle(D)V
    .locals 9
    .param p1, "angle"    # D

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 443
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    .line 445
    iget-wide v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mAngle:D

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v4

    mul-double v0, v2, v6

    .line 447
    .local v0, "percent":D
    div-double v2, v0, v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMaximumValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    .line 448
    iget-object v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mChangeListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mChangeListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getCurrentValue()D

    move-result-wide v4

    invoke-interface {v2, p0, v4, v5}, Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;->onValueChange(Lcom/parrot/freeflight/update/view/CircularSlider;D)V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    .line 453
    return-void
.end method

.method public setDisplayValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayValue"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mDisplayValue:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 497
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->updateColors()V

    .line 501
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->invalidate()V

    goto :goto_0
.end method

.method public setKeyIncrementStep(F)V
    .locals 2
    .param p1, "increment"    # F

    .prologue
    .line 396
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key increment must be above 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mKeyIncrement:F

    .line 399
    return-void
.end method

.method public setMaximumValue(D)V
    .locals 5
    .param p1, "maximumValue"    # D

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 329
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    .line 335
    :goto_0
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    iget-wide v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 336
    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    .line 338
    :cond_0
    return-void

    .line 331
    :cond_1
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    .line 332
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    goto :goto_0
.end method

.method public setMinimumValue(D)V
    .locals 5
    .param p1, "minimumValue"    # D

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 312
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    .line 318
    :goto_0
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mCurrentValue:D

    iget-wide v2, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMinimumValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMaximumValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    .line 321
    :cond_0
    return-void

    .line 314
    :cond_1
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    .line 315
    iput-wide p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    goto :goto_0
.end method

.method public setOnEditionListener(Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mEditionListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnEditionListener;

    .line 426
    return-void
.end method

.method public setOnValueChangeListener(Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mChangeListener:Lcom/parrot/freeflight/update/view/CircularSlider$OnValueChangeListener;

    .line 408
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTitle:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 512
    iget-object v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 513
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mUnit:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setValue(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 345
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMinimumValue:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMinimumValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMaximumValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-wide v0, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mMaximumValue:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 348
    invoke-virtual {p0, v4, v5}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/update/view/CircularSlider;->getMaximumValue()D

    move-result-wide v0

    div-double v0, p1, v0

    mul-double/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/update/view/CircularSlider;->setAngle(D)V

    goto :goto_0
.end method

.method public setValueDecimalFormat(Ljava/text/DecimalFormat;)V
    .locals 0
    .param p1, "valueDecimalFormat"    # Ljava/text/DecimalFormat;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/parrot/freeflight/update/view/CircularSlider;->mValueDecimalFormat:Ljava/text/DecimalFormat;

    .line 478
    return-void
.end method
