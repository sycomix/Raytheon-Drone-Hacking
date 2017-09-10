.class public abstract Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoGlSurfaceView.java"

# interfaces
.implements Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$GlTextureIdProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/controller/video/renderer/VideoGlRenderer;",
        ">",
        "Landroid/opengl/GLSurfaceView;",
        "Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$GlTextureIdProvider;"
    }
.end annotation


# static fields
.field protected static final OPENGL_ES_VERSION:I = 0x2


# instance fields
.field protected mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    .local p0, "this":Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;, "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    .local p0, "this":Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;, "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->setEGLContextClientVersion(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getVideoTextureId()I
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;, "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView<TT;>;"
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/VideoGlRenderer;->getVideoTextureId()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setGlRenderer(Lcom/parrot/controller/video/renderer/VideoGlRenderer;I)V
    .locals 1
    .param p1    # Lcom/parrot/controller/video/renderer/VideoGlRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "renderMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;, "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView<TT;>;"
    .local p1, "renderer":Lcom/parrot/controller/video/renderer/VideoGlRenderer;, "TT;"
    iput-object p1, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    .line 28
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->setRenderMode(I)V

    .line 30
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    .local p0, "this":Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;, "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView<TT;>;"
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->mRenderer:Lcom/parrot/controller/video/renderer/VideoGlRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/video/renderer/VideoGlRenderer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 43
    :cond_0
    return-void
.end method
