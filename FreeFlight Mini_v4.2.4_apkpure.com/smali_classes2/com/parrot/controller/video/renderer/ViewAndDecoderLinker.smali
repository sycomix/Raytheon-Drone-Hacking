.class public abstract Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;
.super Ljava/lang/Object;
.source "ViewAndDecoderLinker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mRenderingView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/controller/video/decoder/VideoDecoder;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoDecoder"    # Lcom/parrot/controller/video/decoder/VideoDecoder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parrot/controller/video/decoder/VideoDecoder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;, "Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker<TT;>;"
    .local p1, "renderingView":Landroid/view/View;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    .line 18
    invoke-virtual {p2}, Lcom/parrot/controller/video/decoder/VideoDecoder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract link()V
.end method

.method protected safeDetach()V
    .locals 2

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;, "Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/parrot/controller/video/renderer/ViewAndDecoderLinker;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract unlink()V
.end method
