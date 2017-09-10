.class public abstract Lcom/parrot/controller/video/ARVideoViewControllerRenderer;
.super Ljava/lang/Object;
.source "ARVideoViewControllerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/SurfaceView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final lock:Ljava/lang/Object;

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field protected final surfaceView:Landroid/view/SurfaceView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/parrot/controller/video/ARVideoViewControllerRenderer;, "Lcom/parrot/controller/video/ARVideoViewControllerRenderer<TV;>;"
    .local p1, "surfaceView":Landroid/view/SurfaceView;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->lock:Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;

    invoke-direct {v0, p0}, Lcom/parrot/controller/video/ARVideoViewControllerRenderer$1;-><init>(Lcom/parrot/controller/video/ARVideoViewControllerRenderer;)V

    iput-object v0, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 14
    iput-object p1, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->surfaceView:Landroid/view/SurfaceView;

    .line 15
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public getView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/controller/video/ARVideoViewControllerRenderer;, "Lcom/parrot/controller/video/ARVideoViewControllerRenderer<TV;>;"
    iget-object v0, p0, Lcom/parrot/controller/video/ARVideoViewControllerRenderer;->surfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method
