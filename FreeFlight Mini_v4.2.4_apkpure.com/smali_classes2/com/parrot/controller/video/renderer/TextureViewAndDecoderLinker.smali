.class public Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;
.super Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
.source "TextureViewAndDecoderLinker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker",
        "<",
        "Landroid/view/TextureView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/TextureView;Lcom/parrot/controller/video/decoder/VideoDecoder;)V
    .locals 0
    .param p1, "renderingView"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoDecoder"    # Lcom/parrot/controller/video/decoder/VideoDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;-><init>(Landroid/view/View;Lcom/parrot/controller/video/decoder/VideoDecoder;)V

    .line 16
    return-void
.end method


# virtual methods
.method public link()V
    .locals 4

    .prologue
    .line 20
    const-string v1, "debug_stream"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextureViewAndDecoderLinker.link "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->safeDetach()V

    .line 23
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 24
    const-string v1, "debug_stream"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextureViewAndDecoderLinker.link made "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlink()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
