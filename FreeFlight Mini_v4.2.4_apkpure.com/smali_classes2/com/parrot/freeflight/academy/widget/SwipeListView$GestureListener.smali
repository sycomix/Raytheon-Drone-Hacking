.class Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/SwipeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/academy/widget/SwipeListView;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/widget/SwipeListView;Lcom/parrot/freeflight/academy/widget/SwipeListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/widget/SwipeListView;
    .param p2, "x1"    # Lcom/parrot/freeflight/academy/widget/SwipeListView$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;-><init>(Lcom/parrot/freeflight/academy/widget/SwipeListView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->isItemSwipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->flyingToCorrectPosition(Z)V

    .line 199
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->isItemSwipEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->access$100(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->access$200(Lcom/parrot/freeflight/academy/widget/SwipeListView;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 205
    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->access$100(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 206
    .local v0, "scrollX":I
    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->access$300(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v0

    add-float/2addr v2, p3

    cmpl-float v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->access$400(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-float v2, v0

    add-float/2addr v2, p3

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->access$100(Lcom/parrot/freeflight/academy/widget/SwipeListView;)Landroid/view/View;

    move-result-object v2

    float-to-int v3, p3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->scrollBy(II)V

    .line 213
    .end local v0    # "scrollX":I
    :cond_2
    :goto_0
    return v1

    .line 208
    .restart local v0    # "scrollX":I
    :cond_3
    if-eqz v0, :cond_2

    .line 209
    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->flyingToCorrectPosition(Z)V

    goto :goto_0

    .line 213
    .end local v0    # "scrollX":I
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0
.end method
