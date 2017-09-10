.class public Lcom/parrot/freeflight/view/VerticalSlider;
.super Lcom/parrot/freeflight/settings/widget/Slider;
.source "VerticalSlider.java"


# static fields
.field private static final VERTICAL_ROTATION:I = -0x5a


# instance fields
.field private mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/widget/Slider;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/widget/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/settings/widget/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 47
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    invoke-super {p0, p1}, Lcom/parrot/freeflight/settings/widget/Slider;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Lcom/parrot/freeflight/settings/widget/Slider;->onMeasure(II)V

    .line 41
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/view/VerticalSlider;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 34
    invoke-super {p0, p2, p1, p4, p3}, Lcom/parrot/freeflight/settings/widget/Slider;->onSizeChanged(IIII)V

    .line 35
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    :goto_0
    return v2

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v3

    .line 86
    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v2, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getMax()I

    move-result v0

    .line 70
    .local v0, "max":I
    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v1, v0, v4

    .line 71
    .local v1, "progress":I
    invoke-static {v1, v2, v0}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v1

    .line 72
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/view/VerticalSlider;->setProgress(I)V

    .line 73
    iget-object v2, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v2, p0, v1, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_1

    .line 78
    .end local v0    # "max":I
    .end local v1    # "progress":I
    :pswitch_2
    iget-object v2, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v2, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "onChangeListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/view/VerticalSlider;->mChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 54
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/settings/widget/Slider;->setProgress(I)V

    .line 95
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/parrot/freeflight/view/VerticalSlider;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/parrot/freeflight/view/VerticalSlider;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
