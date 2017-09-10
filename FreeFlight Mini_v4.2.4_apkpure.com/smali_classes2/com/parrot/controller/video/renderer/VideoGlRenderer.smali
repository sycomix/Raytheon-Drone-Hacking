.class public abstract Lcom/parrot/controller/video/renderer/VideoGlRenderer;
.super Ljava/lang/Object;
.source "VideoGlRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/parrot/controller/video/renderer/GlSurfaceViewAndDecoderLinker$GlTextureIdProvider;


# instance fields
.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 13
    iput-object p1, p0, Lcom/parrot/controller/video/renderer/VideoGlRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 14
    return-void
.end method
