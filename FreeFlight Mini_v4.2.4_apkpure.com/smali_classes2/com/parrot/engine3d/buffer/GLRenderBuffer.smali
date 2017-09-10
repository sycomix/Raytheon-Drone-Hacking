.class public Lcom/parrot/engine3d/buffer/GLRenderBuffer;
.super Ljava/lang/Object;
.source "GLRenderBuffer.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# static fields
.field private static final RENDER_BUFFER_INDEX:I = 0x0

.field private static final RENDER_BUFFER_SIZE:I = 0x1


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mRenderBufferId:[I

.field private final mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    .line 20
    iput p1, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mWidth:I

    .line 21
    iput p2, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mHeight:I

    .line 22
    iput p3, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mFormat:I

    .line 23
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0x8d41

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 40
    iget-object v2, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    aget v1, v2, v1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 42
    iget v1, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mFormat:I

    iget v2, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mWidth:I

    iget v3, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mHeight:I

    invoke-static {v4, v1, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 45
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteGLResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 57
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    aput v2, v0, v2

    .line 59
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x8d41

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 35
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 30
    const v0, 0x8d41

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 31
    return-void
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/GLRenderBuffer;->mRenderBufferId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 68
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    return-void
.end method
