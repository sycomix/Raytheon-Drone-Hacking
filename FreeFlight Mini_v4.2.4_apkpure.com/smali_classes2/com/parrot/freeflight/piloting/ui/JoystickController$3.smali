.class Lcom/parrot/freeflight/piloting/ui/JoystickController$3;
.super Ljava/lang/Object;
.source "JoystickController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/JoystickController;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;

    .prologue
    .line 218
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$3;, "Lcom/parrot/freeflight/piloting/ui/JoystickController$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$3;, "Lcom/parrot/freeflight/piloting/ui/JoystickController$3;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->access$400(Lcom/parrot/freeflight/piloting/ui/JoystickController;Landroid/view/View;IFF)V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/ui/JoystickController;->doubleTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 223
    const/4 v0, 0x1

    return v0
.end method
