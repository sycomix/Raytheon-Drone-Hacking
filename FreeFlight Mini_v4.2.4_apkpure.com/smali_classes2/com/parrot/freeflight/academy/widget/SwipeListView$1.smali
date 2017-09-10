.class Lcom/parrot/freeflight/academy/widget/SwipeListView$1;
.super Ljava/lang/Object;
.source "SwipeListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/widget/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

.field final synthetic val$mGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/widget/SwipeListView;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$1;->this$0:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$1;->val$mGestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/SwipeListView$1;->val$mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
