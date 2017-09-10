.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
    .param p2, "x1"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->onScaleBegin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->onScaleEnd()V

    .line 413
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 414
    return-void
.end method
