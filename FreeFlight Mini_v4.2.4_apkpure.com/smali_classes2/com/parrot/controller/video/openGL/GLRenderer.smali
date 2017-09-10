.class public Lcom/parrot/controller/video/openGL/GLRenderer;
.super Lcom/parrot/controller/video/openGL/ARRenderer;
.source "GLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "GLRenderer"


# direct methods
.method public constructor <init>(Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;)V
    .locals 0
    .param p1, "shaderRenderer"    # Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/openGL/ARRenderer;-><init>(Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->hasNewTexture:Z

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRenderer;->updateImageSize()V

    .line 60
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    iget-boolean v1, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->isInitialized:Z

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-interface {v0, v1, v2}, Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;->shouldUpdateTexCoods(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRenderer;->updateTexCoods()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    iget-boolean v1, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->isInitialized:Z

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->glTexture:Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    invoke-interface {v0, v1, v2}, Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;->applyTexture(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->hasNewTexture:Z

    .line 68
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRenderer;->render()V

    .line 70
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 47
    iput p2, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->backingWidth:I

    .line 48
    iput p3, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->backingHeight:I

    .line 50
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRenderer;->updateVertices()V

    .line 51
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "error":Z
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->shaderRenderer:Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;

    invoke-interface {v1}, Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;->generateTextures()V

    .line 29
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRenderer;->loadShaders()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "GLRenderer"

    const-string v2, "loadShaders error ..."

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    .line 35
    :cond_0
    if-nez v0, :cond_1

    .line 37
    iget v1, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->program:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/controller/video/openGL/GLRenderer;->isInitialized:Z

    .line 41
    :cond_1
    return-void
.end method
