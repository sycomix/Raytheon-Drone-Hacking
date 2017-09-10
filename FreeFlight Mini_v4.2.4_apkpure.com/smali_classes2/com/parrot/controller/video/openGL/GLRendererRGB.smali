.class public Lcom/parrot/controller/video/openGL/GLRendererRGB;
.super Ljava/lang/Object;
.source "GLRendererRGB.java"

# interfaces
.implements Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final rgbFragmentShaderString:Ljava/lang/String;

.field protected textures:[I

.field protected uniformSampler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/parrot/controller/video/openGL/GLRendererRGB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->uniformSampler:I

    .line 15
    const-string v0, "varying highp vec2 v_texcoord;\nuniform sampler2D s_texture;\n\nvoid main()\n{\n    gl_FragColor = texture2D(s_texture, v_texcoord);\n}\n"

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->rgbFragmentShaderString:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public applyTexture(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)V
    .locals 11
    .param p1, "isInitialized"    # Z
    .param p2, "glTexture"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    const/16 v2, 0x1908

    const/4 v4, 0x1

    const v10, 0x47012f00    # 33071.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 93
    if-ne p1, v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 95
    const/16 v3, 0xcf5

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 97
    iget-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->getData()[B

    move-result-object v9

    .line 100
    .local v9, "data":[B
    iget-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_1

    .line 102
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 110
    :goto_0
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getHeight()F

    move-result v4

    float-to-int v4, v4

    const/16 v7, 0x1401

    iget-object v8, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->byteBuffer:Ljava/nio/ByteBuffer;

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 112
    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 113
    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 114
    const/16 v1, 0x2802

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 115
    const/16 v1, 0x2803

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 117
    .end local v9    # "data":[B
    :cond_0
    return-void

    .line 106
    .restart local v9    # "data":[B
    :cond_1
    iget-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 107
    iget-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    iget-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public deleteTextures()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    .line 82
    :cond_0
    return-void
.end method

.method public fragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "varying highp vec2 v_texcoord;\nuniform sampler2D s_texture;\n\nvoid main()\n{\n    gl_FragColor = texture2D(s_texture, v_texcoord);\n}\n"

    return-object v0
.end method

.method public generateTextures()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    .line 71
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 72
    return-void
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public prepareRender()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    const/4 v0, 0x1

    .line 51
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 57
    :cond_0
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->textures:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 59
    iget v1, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->uniformSampler:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resolveUniforms(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 43
    const-string v0, "s_texture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/controller/video/openGL/GLRendererRGB;->uniformSampler:I

    .line 44
    return-void
.end method

.method public shouldUpdateTexCoods(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)Z
    .locals 1
    .param p1, "isInitialized"    # Z
    .param p2, "glTexture"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method
