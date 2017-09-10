.class public Lcom/parrot/freeflight/academy/widget/SwipeListView;
.super Landroid/widget/ListView;
.source "SwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackViewShownPosition:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mDownX:I

.field private mDownY:I

.field private mEnableLeftSwipe:Z

.field private mEnableRightSwipe:Z

.field private mIsSliding:Z

.field private mItemFrontView:Landroid/view/View;

.field private mLeftSwipeMaxDis:I

.field private mRightSwipeMaxDis:I

.field private mScreenWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSlidePosition:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    .line 39
    iput-boolean v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mIsSliding:Z

    .line 42
    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mBackViewShownPosition:I

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableLeftSwipe:Z

    .line 45
    iput-boolean v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableRightSwipe:Z

    .line 58
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScreenWidth:I

    .line 59
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mLeftSwipeMaxDis:I

    .line 60
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mRightSwipeMaxDis:I

    .line 61
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScroller:Landroid/widget/Scroller;

    .line 62
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mTouchSlop:I

    .line 64
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;-><init>(Lcom/parrot/freeflight/academy/widget/SwipeListView;Lcom/parrot/freeflight/academy/widget/SwipeListView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 66
    .local v0, "mGestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Lcom/parrot/freeflight/academy/widget/SwipeListView$1;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/academy/widget/SwipeListView$1;-><init>(Lcom/parrot/freeflight/academy/widget/SwipeListView;Landroid/view/GestureDetector;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/widget/SwipeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .prologue
    .line 19
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableLeftSwipe:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableRightSwipe:Z

    return v0
.end method

.method private addVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    return-void
.end method

.method private getScrollVelocity()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 170
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->postInvalidate()V

    .line 172
    :cond_0
    return-void
.end method

.method public disableItemSwipe()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableLeftSwipe:Z

    .line 219
    iput-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableRightSwipe:Z

    .line 220
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f0f026f

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->isItemSwipEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 79
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->addVelocityTracker(Landroid/view/MotionEvent;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDownX:I

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDownY:I

    .line 83
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    .line 84
    .local v0, "oldSlidePosition":I
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDownX:I

    iget v3, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDownY:I

    invoke-virtual {p0, v1, v3}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    if-eq v0, v1, :cond_1

    .line 87
    iput v4, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    .line 88
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->flyingToCorrectPosition(Z)V

    .line 89
    sget-object v1, Lcom/parrot/freeflight/academy/widget/SwipeListView;->TAG:Ljava/lang/String;

    const-string v2, "hide previous itemView\'s backView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    if-eq v1, v4, :cond_0

    .line 94
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    const v2, 0x7f0f026e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDeleteButton:Landroid/widget/Button;

    .line 97
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    goto :goto_0

    .line 105
    .end local v0    # "oldSlidePosition":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDownX:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDownY:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mTouchSlop:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mIsSliding:Z

    .line 106
    iget-boolean v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mIsSliding:Z

    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->getScrollVelocity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x258

    if-le v4, v5, :cond_3

    :goto_2
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mIsSliding:Z

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 105
    goto :goto_1

    :cond_3
    move v2, v3

    .line 106
    goto :goto_2

    .line 110
    :pswitch_2
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->recycleVelocityTracker()V

    .line 111
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->flyingToCorrectPosition(Z)V

    .line 112
    iput-boolean v3, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mIsSliding:Z

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public flyingToCorrectPosition(Z)V
    .locals 6
    .param p1, "resetToOriginPosition"    # Z

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mBackViewShownPosition:I

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 132
    .local v1, "scrollX":I
    const/4 v3, 0x0

    .line 134
    .local v3, "delta":I
    if-eqz p1, :cond_3

    .line 135
    neg-int v3, v1

    .line 153
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 157
    :cond_1
    add-int v0, v3, v1

    if-nez v0, :cond_7

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDeleteButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    .end local v1    # "scrollX":I
    .end local v3    # "delta":I
    :cond_2
    :goto_1
    return-void

    .line 136
    .restart local v1    # "scrollX":I
    .restart local v3    # "delta":I
    :cond_3
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableLeftSwipe:Z

    if-eqz v0, :cond_5

    .line 138
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mLeftSwipeMaxDis:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_4

    .line 139
    neg-int v3, v1

    goto :goto_0

    .line 141
    :cond_4
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mLeftSwipeMaxDis:I

    sub-int v3, v0, v1

    .line 142
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mBackViewShownPosition:I

    goto :goto_0

    .line 144
    :cond_5
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableRightSwipe:Z

    if-eqz v0, :cond_0

    .line 145
    neg-int v0, v1

    iget v4, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mRightSwipeMaxDis:I

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_6

    .line 146
    neg-int v3, v1

    goto :goto_0

    .line 148
    :cond_6
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mRightSwipeMaxDis:I

    neg-int v0, v0

    sub-int v3, v0, v1

    .line 149
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mSlidePosition:I

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mBackViewShownPosition:I

    goto :goto_0

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public getLeftSwipeMaxDis()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mLeftSwipeMaxDis:I

    return v0
.end method

.method public getRightSwipeMaxDis()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mRightSwipeMaxDis:I

    return v0
.end method

.method public isBackViewShownForPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mItemFrontView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mBackViewShownPosition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemSwipEnabled()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableLeftSwipe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mEnableRightSwipe:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftSwipeMaxDis(I)V
    .locals 1
    .param p1, "leftSwipeMaxDis"    # I

    .prologue
    .line 231
    if-gtz p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScreenWidth:I

    div-int/lit8 p1, v0, 0x4

    .end local p1    # "leftSwipeMaxDis":I
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mLeftSwipeMaxDis:I

    .line 232
    return-void
.end method

.method public setRightSwipeMaxDis(I)V
    .locals 1
    .param p1, "rightSwipeMaxDis"    # I

    .prologue
    .line 239
    if-gtz p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mScreenWidth:I

    div-int/lit8 p1, v0, 0x4

    .end local p1    # "rightSwipeMaxDis":I
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView;->mRightSwipeMaxDis:I

    .line 240
    return-void
.end method
