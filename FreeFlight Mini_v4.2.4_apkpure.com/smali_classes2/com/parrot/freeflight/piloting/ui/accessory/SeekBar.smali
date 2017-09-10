.class public Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final SPACE:I = 0x3

.field private static final STROKE_WIDTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SeekBar"


# instance fields
.field private final mBorderPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEnableInnerColor:Z

.field private mInitProgress:I

.field private final mInnerPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsSelected:Z

.field private mListener:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMax:I

.field private mProgress:I

.field private mRadius:I

.field private final mRect:Landroid/graphics/RectF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResetOnRelease:Z

.field private mSelectedColor:I

.field private mThumb:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mThumbRadius:I

.field private mTouchProgressOffset:I

.field private mTouchProgressRange:I

.field private final mXferPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mEnableInnerColor:Z

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mEnableInnerColor:Z

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    .line 45
    const/16 v0, 0xff

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mEnableInnerColor:Z

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 99
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 101
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    mul-int/lit16 v9, v9, 0xff

    iget v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    div-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 112
    const v7, 0x106000d

    .line 113
    .local v7, "thumbResId":I
    const v8, 0x7f0e0018

    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mSelectedColor:I

    .line 115
    if-eqz p2, :cond_9

    .line 116
    sget-object v8, Lcom/parrot/freeflight/R$styleable;->seekBar:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 117
    .local v2, "customAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 118
    .local v5, "nbAttributes":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 119
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 120
    .local v0, "attr":I
    if-nez v0, :cond_1

    .line 121
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 122
    .local v6, "resId":I
    if-eqz v6, :cond_0

    move v7, v6

    .line 118
    .end local v6    # "resId":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 124
    const/4 v8, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mEnableInnerColor:Z

    goto :goto_1

    .line 125
    :cond_2
    const/4 v8, 0x4

    if-ne v0, v8, :cond_3

    .line 126
    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 127
    .local v1, "colorId":I
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 128
    .end local v1    # "colorId":I
    :cond_3
    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    .line 129
    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mResetOnRelease:Z

    goto :goto_1

    .line 130
    :cond_4
    const/4 v8, 0x3

    if-ne v0, v8, :cond_0

    .line 131
    const/16 v8, 0x11

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 132
    .local v3, "gravity":I
    const/16 v8, 0x11

    if-eq v8, v3, :cond_5

    invoke-static {v3}, Lcom/parrot/freeflight/util/ui/GravityManager;->convertCustomGravity(I)I

    move-result v3

    .line 133
    :cond_5
    and-int/lit8 v8, v3, 0x30

    const/16 v9, 0x30

    if-ne v8, v9, :cond_6

    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInitProgress:I

    .line 136
    :goto_2
    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInitProgress:I

    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    goto :goto_1

    .line 134
    :cond_6
    and-int/lit8 v8, v3, 0x11

    const/16 v9, 0x11

    if-ne v8, v9, :cond_7

    iget v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    ushr-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInitProgress:I

    goto :goto_2

    .line 135
    :cond_7
    const/4 v8, 0x0

    iput v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInitProgress:I

    goto :goto_2

    .line 139
    .end local v0    # "attr":I
    .end local v3    # "gravity":I
    :cond_8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v2    # "customAttributes":Landroid/content/res/TypedArray;
    .end local v4    # "i":I
    .end local v5    # "nbAttributes":I
    :cond_9
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v8, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 143
    return-void
.end method

.method private setProgress(IZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 223
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    if-eq p1, v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mListener:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mListener:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;->onProgressChanged(IZ)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    mul-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 266
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getDrawableState()[I

    move-result-object v0

    .line 268
    .local v0, "state":[I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 270
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    .line 271
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 277
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressRange:I

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v6, v0, v1

    .line 175
    .local v6, "thumbOffset":I
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mEnableInnerColor:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRadius:I

    add-int/2addr v0, v6

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRadius:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRadius:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    add-int/lit8 v2, v6, 0x8

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumbRadius:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v6, 0x8

    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumbRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    return-void

    .line 169
    .end local v6    # "thumbOffset":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mBorderPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mIsSelected:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mProgress:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mSelectedColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 149
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumbRadius:I

    .line 150
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRadius:I

    .line 151
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumbRadius:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressOffset:I

    .line 152
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressOffset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressRange:I

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mXferPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumbRadius:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumbRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 161
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mResetOnRelease:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInitProgress:I

    invoke-direct {p0, v2, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setProgress(IZ)V

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v2

    .line 215
    goto :goto_0

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressOffset:I

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressRange:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 201
    const/4 v0, 0x0

    .line 207
    .local v0, "i":I
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setProgress(IZ)V

    .line 208
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    goto :goto_1

    .line 202
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressOffset:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    .line 203
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    .restart local v0    # "i":I
    goto :goto_2

    .line 205
    .end local v0    # "i":I
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressOffset:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mTouchProgressRange:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v0, v1, v3

    .restart local v0    # "i":I
    goto :goto_2

    .line 212
    .end local v0    # "i":I
    :pswitch_1
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mResetOnRelease:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInitProgress:I

    invoke-direct {p0, v3, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setProgress(IZ)V

    goto :goto_1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mEnableInnerColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    .line 247
    :cond_0
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mMax:I

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    .line 71
    return-void
.end method

.method public setOnLedSeekBarChangeListener(Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mListener:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;

    .line 261
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setProgress(IZ)V

    .line 220
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mIsSelected:Z

    .line 241
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    .line 242
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 250
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->invalidate()V

    .line 252
    return-void
.end method
