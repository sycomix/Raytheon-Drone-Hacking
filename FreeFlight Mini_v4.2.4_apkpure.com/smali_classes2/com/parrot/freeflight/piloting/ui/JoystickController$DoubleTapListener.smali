.class Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "JoystickController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/JoystickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>.DoubleTapListener;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;Lcom/parrot/freeflight/piloting/ui/JoystickController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/JoystickController;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/ui/JoystickController$1;

    .prologue
    .line 31
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>.DoubleTapListener;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;-><init>(Lcom/parrot/freeflight/piloting/ui/JoystickController;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;, "Lcom/parrot/freeflight/piloting/ui/JoystickController<TT;>.DoubleTapListener;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/JoystickController$DoubleTapListener;->this$0:Lcom/parrot/freeflight/piloting/ui/JoystickController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/JoystickController;->access$000(Lcom/parrot/freeflight/piloting/ui/JoystickController;Landroid/view/MotionEvent;)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
