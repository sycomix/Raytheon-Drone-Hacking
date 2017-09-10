.class public Lcom/parrot/engine3d/GLRenderingView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRenderingView.java"

# interfaces
.implements Lcom/parrot/engine3d/GLThreadInterface;


# static fields
.field private static final OPENGL_ES_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRenderingView"


# instance fields
.field private final mRenderer:Lcom/parrot/engine3d/GLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/parrot/engine3d/GLRenderer;

    invoke-direct {v0}, Lcom/parrot/engine3d/GLRenderer;-><init>()V

    iput-object v0, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    .line 21
    invoke-direct {p0}, Lcom/parrot/engine3d/GLRenderingView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/parrot/engine3d/GLRenderer;

    invoke-direct {v0}, Lcom/parrot/engine3d/GLRenderer;-><init>()V

    iput-object v0, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    .line 26
    invoke-direct {p0}, Lcom/parrot/engine3d/GLRenderingView;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parrot/engine3d/GLRenderingView;->setEGLContextClientVersion(I)V

    .line 32
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/engine3d/GLRenderingView;->setEGLConfigChooser(IIIIII)V

    .line 33
    invoke-virtual {p0}, Lcom/parrot/engine3d/GLRenderingView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 35
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    invoke-virtual {p0, v0}, Lcom/parrot/engine3d/GLRenderingView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLRenderer;->getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLRenderer;->onPause()V

    .line 41
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 42
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/parrot/engine3d/GLRenderingView;->queueEvent(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public setScene(Lcom/parrot/engine3d/Scene;)V
    .locals 1
    .param p1, "scene"    # Lcom/parrot/engine3d/Scene;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/GLRenderer;->setScene(Lcom/parrot/engine3d/Scene;)V

    .line 46
    return-void
.end method

.method public snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V
    .locals 2
    .param p1, "onSnapshotReadyListener"    # Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/parrot/engine3d/GLRenderingView;->getVisibility()I

    move-result v0

    .line 59
    .local v0, "visibility":I
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/engine3d/GLRenderingView;->setVisibility(I)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/parrot/engine3d/GLRenderingView;->mRenderer:Lcom/parrot/engine3d/GLRenderer;

    invoke-virtual {v1, p1}, Lcom/parrot/engine3d/GLRenderer;->snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/parrot/engine3d/GLRenderingView;->requestRender()V

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/parrot/engine3d/GLRenderingView;->setVisibility(I)V

    .line 67
    :cond_1
    return-void
.end method
