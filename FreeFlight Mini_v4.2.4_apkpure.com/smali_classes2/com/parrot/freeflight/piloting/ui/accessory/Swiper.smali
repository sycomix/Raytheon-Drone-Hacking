.class public Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;
.super Landroid/view/View;
.source "Swiper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;
    }
.end annotation


# static fields
.field private static final ALPHA_DECREMENT:I = 0x55

.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final DOT_COUNT:I = 0x3


# instance fields
.field private final mDotRadius:I

.field private final mDotSpacing:I

.field private mLastDownY:I

.field private mListener:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRelativeMoveY:I

.field private mSwipeDetected:Z

.field private final mSwipeThreshold:I

.field private final mThumb:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThumbSize:I

.field private final mVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 61
    .local v5, "resources":Landroid/content/res/Resources;
    const v7, 0x7f0a007e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    .line 62
    const v7, 0x7f0a009d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mVerticalPadding:I

    .line 63
    const v7, 0x7f0a009a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotRadius:I

    .line 64
    const v7, 0x7f0a009b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotSpacing:I

    .line 65
    const v7, 0x7f0a01f2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mSwipeThreshold:I

    .line 67
    const v6, 0x106000d

    .line 68
    .local v6, "thumbResId":I
    if-eqz p2, :cond_2

    .line 69
    sget-object v7, Lcom/parrot/freeflight/R$styleable;->swiper:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 70
    .local v2, "customAttributes":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 72
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 74
    .local v4, "resId":I
    if-eqz v4, :cond_0

    move v6, v4

    .line 70
    .end local v4    # "resId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "attr":I
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .end local v1    # "count":I
    .end local v2    # "customAttributes":Landroid/content/res/TypedArray;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 80
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mPaint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getWidth()I

    move-result v7

    .line 89
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getHeight()I

    move-result v2

    .line 92
    .local v2, "height":I
    div-int/lit8 v1, v7, 0x2

    .line 93
    .local v1, "dotX":I
    div-int/lit8 v10, v2, 0x2

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotSpacing:I

    sub-int v9, v10, v11

    .line 94
    .local v9, "yUp":I
    div-int/lit8 v10, v2, 0x2

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotSpacing:I

    add-int v8, v10, v11

    .line 95
    .local v8, "yDown":I
    const/16 v0, 0xff

    .line 96
    .local v0, "alpha":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v10, 0x3

    if-ge v4, v10, :cond_0

    .line 97
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    int-to-float v10, v1

    int-to-float v11, v9

    iget v12, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotRadius:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    int-to-float v10, v1

    int-to-float v11, v8

    iget v12, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotRadius:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    iget v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotSpacing:I

    sub-int/2addr v9, v10

    .line 101
    iget v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mDotSpacing:I

    add-int/2addr v8, v10

    .line 102
    add-int/lit8 v0, v0, -0x55

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    sub-int v10, v7, v10

    div-int/lit8 v3, v10, 0x2

    .line 107
    .local v3, "horizontalPadding":I
    iget v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mVerticalPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v2, v10

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    sub-int v5, v10, v11

    .line 108
    .local v5, "moveRange":I
    div-int/lit8 v10, v5, 0x2

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mRelativeMoveY:I

    add-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v10, v11, v5}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v10

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mVerticalPadding:I

    add-int v6, v10, v11

    .line 109
    .local v6, "thumbOffset":I
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    add-int/2addr v11, v3

    iget v12, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumbSize:I

    add-int/2addr v12, v6

    invoke-virtual {v10, v3, v6, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v10, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    .line 116
    .local v0, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return v2

    .line 118
    :pswitch_0
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mLastDownY:I

    goto :goto_0

    .line 121
    :pswitch_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mSwipeDetected:Z

    .line 122
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mRelativeMoveY:I

    .line 123
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->invalidate()V

    goto :goto_0

    .line 126
    :pswitch_2
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mLastDownY:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mRelativeMoveY:I

    .line 127
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->invalidate()V

    .line 128
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mSwipeDetected:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mRelativeMoveY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mSwipeThreshold:I

    if-le v3, v4, :cond_0

    .line 129
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mSwipeDetected:Z

    .line 130
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mListener:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mListener:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mRelativeMoveY:I

    if-gez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;->onSwipe(Z)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 153
    :cond_0
    return-void
.end method

.method public setOnSwipeListener(Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->mListener:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;

    .line 141
    return-void
.end method
