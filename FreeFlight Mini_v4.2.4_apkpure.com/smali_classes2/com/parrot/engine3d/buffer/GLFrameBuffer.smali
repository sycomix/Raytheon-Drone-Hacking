.class public Lcom/parrot/engine3d/buffer/GLFrameBuffer;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# static fields
.field private static final FRAME_BUFFER_INDEX:I = 0x0

.field private static final FRAME_BUFFER_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLFrameBuffer"


# instance fields
.field private mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

.field private final mFrameBufferId:[I

.field private final mHeight:I

.field private final mRatio:F

.field private mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    .line 32
    iput p1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mWidth:I

    .line 33
    iput p2, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mHeight:I

    .line 34
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRatio:F

    .line 35
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const v7, 0x8d40

    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 58
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    aget v0, v0, v4

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    aget v0, v0, v4

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 61
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    iget v1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mWidth:I

    iget v2, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mHeight:I

    const/16 v3, 0x1907

    const/16 v5, 0x2601

    invoke-direct/range {v0 .. v5}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(IIIII)V

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    .line 62
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->createGLResources(Landroid/content/res/Resources;)Z

    .line 63
    const v0, 0x8ce0

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->getTarget()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->getId()I

    move-result v2

    invoke-static {v7, v0, v1, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 64
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->disable()V

    .line 66
    new-instance v0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    iget v1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mWidth:I

    iget v2, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mHeight:I

    const v3, 0x81a5

    invoke-direct {v0, v1, v2, v3}, Lcom/parrot/engine3d/buffer/GLRenderBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    .line 67
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->createGLResources(Landroid/content/res/Resources;)Z

    .line 68
    const v0, 0x8d00

    const v1, 0x8d41

    iget-object v2, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    invoke-virtual {v2}, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->getId()I

    move-result v2

    invoke-static {v7, v0, v1, v2}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 69
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->disable()V

    .line 71
    invoke-static {v7}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-ne v0, v1, :cond_1

    .line 72
    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    move v4, v6

    .line 80
    :cond_0
    :goto_0
    return v4

    .line 75
    :cond_1
    const-string v0, "GLFrameBuffer"

    const-string v1, "Error: something wrong happened when creating the framebuffer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->deleteGLResources()V

    goto :goto_0
.end method

.method public deleteGLResources()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->deleteGLResources()V

    .line 94
    iput-object v3, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    invoke-virtual {v0}, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->deleteGLResources()V

    .line 98
    iput-object v3, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRenderBuffer:Lcom/parrot/engine3d/buffer/GLRenderBuffer;

    .line 100
    :cond_2
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 47
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 42
    const v0, 0x8d40

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 43
    return-void
.end method

.method public getColorBuffer()Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mColorBuffer:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mFrameBufferId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mRatio:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/parrot/engine3d/buffer/GLFrameBuffer;->mWidth:I

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 109
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    return-void
.end method
