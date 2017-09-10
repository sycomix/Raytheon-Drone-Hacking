.class public Lcom/parrot/engine3d/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "GLRenderer"


# instance fields
.field private final mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mScene:Lcom/parrot/engine3d/Scene;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/parrot/engine3d/GLExtensionsSupport;

    invoke-direct {v0}, Lcom/parrot/engine3d/GLExtensionsSupport;-><init>()V

    iput-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    .line 25
    return-void
.end method


# virtual methods
.method public getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v0}, Lcom/parrot/engine3d/Scene;->render()V

    .line 54
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    iget-object v1, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v1}, Lcom/parrot/engine3d/Scene;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v2}, Lcom/parrot/engine3d/Scene;->getHeight()I

    move-result v2

    invoke-static {v3, v3, v1, v2}, Lcom/parrot/engine3d/bitmaps/BitmapWriter;->createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    .line 59
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v0}, Lcom/parrot/engine3d/Scene;->onContextReleased()V

    .line 65
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 43
    const-string v0, "GLRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/engine3d/Scene;->onContextChanged(II)V

    .line 47
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLExtensionsSupport;->initialize()V

    .line 35
    const-string v0, "GLRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    invoke-virtual {v0}, Lcom/parrot/engine3d/Scene;->onContextCreated()V

    .line 39
    :cond_0
    return-void
.end method

.method public setScene(Lcom/parrot/engine3d/Scene;)V
    .locals 0
    .param p1, "scene"    # Lcom/parrot/engine3d/Scene;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/engine3d/GLRenderer;->mScene:Lcom/parrot/engine3d/Scene;

    .line 29
    return-void
.end method

.method public snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V
    .locals 0
    .param p1, "onSnapshotReadyListener"    # Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/engine3d/GLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    .line 69
    return-void
.end method
