.class public Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;
.super Landroid/widget/FrameLayout;
.source "RoundedCornerLayout.java"


# static fields
.field private static final DEFAULT_CORNER_RADIUS:F = 10.0f


# instance fields
.field private mCornerRadius:F

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mOuterBackgroundColor:I

.field private final mPath:Landroid/graphics/Path;

.field private final mViewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mViewRect:Landroid/graphics/RectF;

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mViewRect:Landroid/graphics/RectF;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mPath:Landroid/graphics/Path;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mViewRect:Landroid/graphics/RectF;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 47
    if-nez p3, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/R$styleable;->RoundedCornerLayout:[I

    invoke-virtual {v1, p2, v2, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "ta":Landroid/content/res/TypedArray;
    :goto_0
    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mOuterBackgroundColor:I

    .line 54
    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mCornerRadius:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setFocusable(Z)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->setClickable(Z)V

    .line 60
    return-void

    .line 50
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/R$styleable;->RoundedCornerLayout:[I

    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "ta":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected createMask(II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 79
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 81
    .local v3, "windowFrame":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v0, "osCanvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 85
    .local v1, "outerRectangle":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 86
    .local v2, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mOuterBackgroundColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 89
    const/high16 v4, -0x10000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    iget v4, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mCornerRadius:F

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mCornerRadius:F

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 93
    return-object v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mViewRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mCornerRadius:F

    iget v3, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mCornerRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RoundedCornerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 76
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 67
    return-void
.end method
