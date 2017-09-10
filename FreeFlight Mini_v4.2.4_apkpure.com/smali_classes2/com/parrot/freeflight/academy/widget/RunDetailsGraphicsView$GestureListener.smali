.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
    .param p2, "x1"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->onDown()Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 426
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->onFling(FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 431
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->onScroll(F)Z

    move-result v0

    return v0
.end method
