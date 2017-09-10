.class public Lcom/parrot/controller/video/renderer/ViewAndDecoderLinkerFactory;
.super Ljava/lang/Object;
.source "ViewAndDecoderLinkerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/View;Lcom/parrot/controller/video/decoder/VideoDecoder;)Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "videoDecoder"    # Lcom/parrot/controller/video/decoder/VideoDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/parrot/controller/video/decoder/VideoDecoder;",
            ")",
            "Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    instance-of v0, p0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;

    check-cast p0, Landroid/view/TextureView;

    .end local p0    # "view":Landroid/view/View;
    invoke-direct {v0, p0, p1}, Lcom/parrot/controller/video/renderer/TextureViewAndDecoderLinker;-><init>(Landroid/view/TextureView;Lcom/parrot/controller/video/decoder/VideoDecoder;)V

    .line 18
    :goto_0
    return-object v0

    .line 15
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    check-cast p0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    .end local p0    # "view":Landroid/view/View;
    invoke-direct {v0, p0, p1}, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;-><init>(Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;Lcom/parrot/controller/video/decoder/VideoDecoder;)V

    goto :goto_0

    .line 18
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
