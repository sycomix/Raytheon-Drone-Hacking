.class Lcom/parrot/freeflight/camera/CameraController$1;
.super Landroid/view/OrientationEventListener;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/camera/CameraController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/camera/CameraController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/camera/CameraController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/camera/CameraController;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/camera/CameraController;->access$000(Lcom/parrot/freeflight/camera/CameraController;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 61
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/camera/CameraController;->access$100(Lcom/parrot/freeflight/camera/CameraController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/camera/CameraController;->access$102(Lcom/parrot/freeflight/camera/CameraController;I)I

    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/camera/CameraController;->access$200(Lcom/parrot/freeflight/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController$1;->this$0:Lcom/parrot/freeflight/camera/CameraController;

    invoke-static {v2}, Lcom/parrot/freeflight/camera/CameraController;->access$200(Lcom/parrot/freeflight/camera/CameraController;)Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/parrot/freeflight/camera/CameraController;->access$300(Lcom/parrot/freeflight/camera/CameraController;Landroid/hardware/Camera;II)V

    .line 67
    :cond_0
    return-void
.end method
