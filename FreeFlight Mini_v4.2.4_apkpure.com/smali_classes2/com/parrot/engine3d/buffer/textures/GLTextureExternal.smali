.class public Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;
.super Lcom/parrot/engine3d/buffer/textures/GLTexture;
.source "GLTextureExternal.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "textureUnit"    # I

    .prologue
    .line 14
    const v0, 0x8d65

    invoke-direct {p0, p1, v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;-><init>(II)V

    .line 15
    return-void
.end method

.method public static createAndInit(Landroid/content/res/Resources;I)Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "unit"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;

    invoke-direct {v0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;-><init>(I)V

    .line 20
    .local v0, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    invoke-virtual {v0, p0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->createGLResources(Landroid/content/res/Resources;)Z

    .line 21
    return-object v0
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x2601

    const/4 v0, 0x1

    const v4, 0x47012f00    # 33071.0f

    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 28
    iget-object v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 29
    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    iget-object v3, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    aget v3, v3, v1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    const/16 v3, 0x2800

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 32
    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    const/16 v3, 0x2801

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 33
    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    const/16 v3, 0x2802

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 34
    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    const/16 v3, 0x2803

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 36
    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
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

    .line 49
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 51
    iput-boolean v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mCreated:Z

    .line 53
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 66
    const v0, 0x84c0

    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mUnit:I

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 67
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mTarget:I

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    return-void
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public sendToShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 2
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string v1, "uTextureSampler"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTextureExternal;->mUnit:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 73
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    return-void
.end method
