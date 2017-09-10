.class public abstract Lcom/parrot/controller/video/decoder/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
    }
.end annotation


# instance fields
.field protected final mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V
    .locals 2
    .param p1, "videoListener"    # Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mListener:Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;

    .line 29
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 30
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurface:Landroid/view/Surface;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/VideoDecoder;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
