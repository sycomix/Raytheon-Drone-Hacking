.class Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;
.super Ljava/lang/Object;
.source "ARVideoViewControllerRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/ARVideoViewControllerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/ARVideoViewControllerRenderer;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/ARVideoViewControllerRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/ARVideoViewControllerRenderer;

    .prologue
    .line 34
    .local p0, "this":Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;, "Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;"
    iput-object p1, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;->this$0:Lcom/parrot/controller/video/ARVideoViewControllerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;, "Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;"
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;, "Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;->this$0:Lcom/parrot/controller/video/ARVideoViewControllerRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->onStart()V

    .line 40
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;, "Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;->this$0:Lcom/parrot/controller/video/ARVideoViewControllerRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->onStop()V

    .line 52
    return-void
.end method
