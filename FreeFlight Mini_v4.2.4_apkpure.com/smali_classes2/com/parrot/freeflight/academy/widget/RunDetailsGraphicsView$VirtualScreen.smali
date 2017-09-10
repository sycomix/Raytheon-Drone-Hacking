.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
.super Ljava/lang/Object;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualScreen"
.end annotation


# instance fields
.field private mFirstXDisplayed:I

.field private final mFlingTracker:Landroid/widget/Scroller;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsScaling:Z

.field private mMaxFirstXDisplayed:I

.field private mRealScreenWidth:I

.field private mSavedRelativeStartPosition:F

.field private mWidth:I

.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/content/Context;I)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "realScreenWidth"    # I

    .prologue
    .line 445
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mSavedRelativeStartPosition:F

    .line 446
    iput p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    .line 447
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    .line 448
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFlingTracker:Landroid/widget/Scroller;

    .line 449
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->setFirstXDisplayed(F)V

    .line 570
    :cond_0
    return-void
.end method

.method public getFirstXDisplayed()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    return v0
.end method

.method public getRelativeEndPosition()F
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRelativeStartPosition()F
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getVirtualWidth()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    return v0
.end method

.method public onDown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 547
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 548
    return v1
.end method

.method public onFling(FF)Z
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mIsScaling:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    neg-float v3, p1

    float-to-int v3, v3

    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mMaxFirstXDisplayed:I

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 554
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 556
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 500
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    .line 501
    .local v4, "scaleFactor":F
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v2

    .line 502
    .local v2, "oldScaleFactor":F
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v6

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$302(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;F)F

    .line 505
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float v0, v5, v8

    .line 508
    .local v0, "maxScaleFactor":F
    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 511
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$302(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;F)F

    .line 513
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v5

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_1

    .line 514
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)V

    .line 516
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v5

    div-float v1, v5, v2

    .line 517
    .local v1, "newScaleRatio":F
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v3, v5

    .line 519
    .local v3, "oldWidth":F
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    .line 520
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    if-ge v5, v6, :cond_0

    .line 521
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    iput v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    .line 523
    :cond_0
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mMaxFirstXDisplayed:I

    .line 528
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    int-to-float v5, v5

    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->setFirstXDisplayed(F)V

    .line 531
    .end local v1    # "newScaleRatio":F
    .end local v3    # "oldWidth":F
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method public onScaleBegin()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 535
    iget-boolean v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mIsScaling:Z

    if-eqz v1, :cond_0

    .line 536
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    .line 538
    :cond_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mIsScaling:Z

    goto :goto_0
.end method

.method public onScaleEnd()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mIsScaling:Z

    .line 544
    return-void
.end method

.method public onScroll(F)Z
    .locals 2
    .param p1, "distanceX"    # F

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mIsScaling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 561
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->setFirstXDisplayed(F)V

    .line 563
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public restoreState(F)V
    .locals 1
    .param p1, "relativeStartPosition"    # F

    .prologue
    .line 474
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    if-nez v0, :cond_0

    .line 475
    iput p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mSavedRelativeStartPosition:F

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->setFirstXDisplayed(F)V

    goto :goto_0
.end method

.method public setFirstXDisplayed(F)V
    .locals 3
    .param p1, "firstXDisplayed"    # F

    .prologue
    .line 456
    float-to-int v0, p1

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    .line 458
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mMaxFirstXDisplayed:I

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->invalidate()V

    .line 460
    return-void
.end method

.method public updateRealScreenWidth(I)V
    .locals 2
    .param p1, "realScreenWidth"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    .line 487
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    .line 488
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mRealScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mMaxFirstXDisplayed:I

    .line 491
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mSavedRelativeStartPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 492
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mSavedRelativeStartPosition:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->setFirstXDisplayed(F)V

    .line 493
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mSavedRelativeStartPosition:F

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->mFirstXDisplayed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->setFirstXDisplayed(F)V

    goto :goto_0
.end method
