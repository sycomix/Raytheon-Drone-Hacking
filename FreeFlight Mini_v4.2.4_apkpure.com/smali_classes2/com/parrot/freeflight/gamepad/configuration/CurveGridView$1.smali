.class Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;
.super Ljava/lang/Object;
.source "CurveGridView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 110
    .local v0, "retVal":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;

    move-result-object v1

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->access$200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$300(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 113
    :cond_0
    return v0
.end method
