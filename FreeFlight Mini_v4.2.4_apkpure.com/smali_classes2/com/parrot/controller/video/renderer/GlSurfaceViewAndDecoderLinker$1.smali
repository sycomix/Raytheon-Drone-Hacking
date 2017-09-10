.class Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$1;
.super Ljava/lang/Object;
.source "GlSurfaceViewAndDecoderLinker.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->link()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;


# direct methods
.method constructor <init>(Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$1;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$1;->this$0:Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;

    iget-object v0, v0, Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker;->mRenderingView:Landroid/view/View;

    check-cast v0, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;

    invoke-virtual {v0}, Lcom/parrot/controller/video/renderer/VideoGlSurfaceView;->requestRender()V

    .line 30
    return-void
.end method
