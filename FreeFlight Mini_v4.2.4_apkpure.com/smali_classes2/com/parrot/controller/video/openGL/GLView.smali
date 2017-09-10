.class public Lcom/parrot/controller/video/openGL/GLView;
.super Landroid/opengl/GLSurfaceView;
.source "GLView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private renderer:Lcom/parrot/controller/video/openGL/GLRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/parrot/controller/video/openGL/GLView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/openGL/GLView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    .line 15
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/openGL/GLView;->setEGLContextClientVersion(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public flipHorizontal()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLRenderer;->flipHorizontal()V

    .line 80
    :cond_0
    return-void
.end method

.method public flipVertival()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-virtual {v0}, Lcom/parrot/controller/video/openGL/GLRenderer;->flipVertival()V

    .line 72
    :cond_0
    return-void
.end method

.method public getRenderer()Lcom/parrot/controller/video/openGL/GLRenderer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    return-object v0
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .param p1, "flipHorizontal"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/video/openGL/GLRenderer;->setFlipHorizontal(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public setFlipVertival(Z)V
    .locals 1
    .param p1, "flipVertival"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/video/openGL/GLRenderer;->setFlipVertival(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public setRenderer(Lcom/parrot/controller/video/openGL/GLRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/parrot/controller/video/openGL/GLRenderer;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 21
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/openGL/GLView;->setRenderMode(I)V

    .line 23
    return-void
.end method

.method public setTexture(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-virtual {v1, p1}, Lcom/parrot/controller/video/openGL/GLRenderer;->setGLTexture(Lcom/parrot/controller/video/openGL/AROpenGLTexture;)Z

    move-result v0

    .line 35
    .local v0, "mustRender":Z
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLView;->requestRender()V

    .line 40
    .end local v0    # "mustRender":Z
    :cond_0
    return-void
.end method

.method public setTextureScaleMode(Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;)V
    .locals 1
    .param p1, "scaleMode"    # Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLView;->renderer:Lcom/parrot/controller/video/openGL/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/controller/video/openGL/GLRenderer;->setTextureScaleMode(Lcom/parrot/controller/video/openGL/ARRenderer$SCALE_MODE_ENUM;)V

    .line 48
    :cond_0
    return-void
.end method
