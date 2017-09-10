.class public Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;
.super Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
.source "GlSurfaceViewAndDecoderLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$GlTextureIdProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker",
        "<",
        "Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;Lcom/parrot/controller/video/decoder/VideoDecoder;)V
    .locals 0
    .param p1, "renderingView"    # Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoDecoder"    # Lcom/parrot/controller/video/decoder/VideoDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;-><init>(Landroid/view/View;Lcom/parrot/controller/video/decoder/VideoDecoder;)V

    .line 17
    return-void
.end method


# virtual methods
.method public link()V
    .locals 3

    .prologue
    .line 21
    const-string v1, "debug_stream"

    const-string v2, "GlSurfaceViewAndDecoderLinker.link"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->safeDetach()V

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v1, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    invoke-virtual {v1}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->getVideoTextureId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 25
    iget-object v1, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v1, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    iget-object v2, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 26
    iget-object v1, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$1;

    invoke-direct {v2, p0}, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$1;-><init>(Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unlink()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 40
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 42
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    new-instance v1, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;

    invoke-direct {v1, p0}, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$2;-><init>(Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;)V

    invoke-virtual {v0, v1}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method
