.class public Lcom/parrot/controller/video/openGL/GLRendererYUV;
.super Ljava/lang/Object;
.source "GLRendererYUV.java"

# interfaces
.implements Lcom/parrot/controller/video/openGL/ARRenderer$ShaderRenderingInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final yuvFragmentShaderString:Ljava/lang/String; = "varying highp vec2 v_texcoord;\nuniform sampler2D s_texture_y;\nuniform sampler2D s_texture_u;\nuniform sampler2D s_texture_v;\n\nvoid main()\n{\n    highp float y = texture2D(s_texture_y, v_texcoord).r;\n    highp float u = texture2D(s_texture_u, v_texcoord).r - 0.5;\n    highp float v = texture2D(s_texture_v, v_texcoord).r - 0.5;\n    \n    highp float r = y + 1.402 * v;\n    highp float g = y - 0.344 * u - 0.714 * v;\n    highp float b = y + 1.772 * u;\n    \n    gl_FragColor = vec4(r,g,b,1.0);\n}\n"


# instance fields
.field private previousYlineSize:F

.field private texCoords:[F

.field private textures:[I

.field protected uniformSamplers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/parrot/controller/video/openGL/GLRendererYUV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->uniformSamplers:[I

    .line 42
    return-void

    .line 13
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private genTexCoods(FI)V
    .locals 5
    .param p1, "width"    # F
    .param p2, "lineSize"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 172
    int-to-float v1, p2

    div-float v0, p1, v1

    .line 181
    .local v0, "texCoordX":F
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 182
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x1

    aput v4, v1, v2

    .line 183
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 184
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x3

    aput v4, v1, v2

    .line 185
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x4

    aput v3, v1, v2

    .line 186
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x5

    aput v3, v1, v2

    .line 187
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x6

    aput v0, v1, v2

    .line 188
    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    const/4 v2, 0x7

    aput v3, v1, v2

    .line 190
    return-void
.end method


# virtual methods
.method public applyTexture(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)V
    .locals 13
    .param p1, "isInitialized"    # Z
    .param p2, "glTexture"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    const/4 v4, 0x1

    const v12, 0x47012f00    # 33071.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 134
    if-ne p1, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRendererYUV;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x3

    new-array v10, v2, [I

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getHeight()F

    move-result v2

    float-to-int v2, v2

    aput v2, v10, v1

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getHeight()F

    move-result v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v10, v4

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getHeight()F

    move-result v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v10, v2

    .line 149
    .local v10, "heights":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v11, v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    aget v2, v2, v11

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 153
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->getData()[B

    move-result-object v9

    .line 154
    .local v9, "data":[B
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->getlineSize()I

    move-result v3

    .line 155
    .local v3, "width":I
    const/16 v2, 0x1909

    aget v4, v10, v11

    const/16 v6, 0x1909

    const/16 v7, 0x1401

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 157
    const/16 v2, 0x2800

    const/16 v4, 0x2601

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 158
    const/16 v2, 0x2801

    const/16 v4, 0x2601

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 159
    const/16 v2, 0x2802

    invoke-static {v0, v2, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 160
    const/16 v2, 0x2803

    invoke-static {v0, v2, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 149
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "width":I
    .end local v9    # "data":[B
    .end local v10    # "heights":[I
    .end local v11    # "i":I
    :cond_0
    sget-object v0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->TAG:Ljava/lang/String;

    const-string v1, "error textures are not valid"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void
.end method

.method public deleteTextures()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    .line 84
    :cond_0
    return-void
.end method

.method public fragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "varying highp vec2 v_texcoord;\nuniform sampler2D s_texture_y;\nuniform sampler2D s_texture_u;\nuniform sampler2D s_texture_v;\n\nvoid main()\n{\n    highp float y = texture2D(s_texture_y, v_texcoord).r;\n    highp float u = texture2D(s_texture_u, v_texcoord).r - 0.5;\n    highp float v = texture2D(s_texture_v, v_texcoord).r - 0.5;\n    \n    highp float r = y + 1.402 * v;\n    highp float g = y - 0.344 * u - 0.714 * v;\n    highp float b = y + 1.772 * u;\n    \n    gl_FragColor = vec4(r,g,b,1.0);\n}\n"

    return-object v0
.end method

.method public generateTextures()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 72
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    .line 73
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 74
    return-void

    .line 72
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public prepareRender()Z
    .locals 4

    .prologue
    .line 89
    const/4 v1, 0x1

    .line 91
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 107
    :goto_0
    return v1

    .line 97
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 99
    const v2, 0x84c0

    add-int/2addr v2, v0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 100
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->textures:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    iget-object v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->uniformSamplers:[I

    aget v2, v2, v0

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public resolveUniforms(I)V
    .locals 3
    .param p1, "program"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->uniformSamplers:[I

    const/4 v1, 0x0

    const-string v2, "s_texture_y"

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->uniformSamplers:[I

    const/4 v1, 0x1

    const-string v2, "s_texture_u"

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->uniformSamplers:[I

    const/4 v1, 0x2

    const-string v2, "s_texture_v"

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 67
    return-void
.end method

.method public setTexCoords([F)V
    .locals 0
    .param p1, "texCoords"    # [F

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->texCoords:[F

    .line 47
    return-void
.end method

.method public shouldUpdateTexCoods(ZLcom/parrot/controller/video/openGL/AROpenGLTexture;)Z
    .locals 4
    .param p1, "isInitialized"    # Z
    .param p2, "glTexture"    # Lcom/parrot/controller/video/openGL/AROpenGLTexture;

    .prologue
    const/4 v3, 0x0

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "ret":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/parrot/controller/video/openGL/GLRendererYUV;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->getlineSize()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->previousYlineSize:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getTextureSize()Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/controller/video/openGL/AROpenGLTexture$AROpenGLSize;->getWidth()F

    move-result v1

    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->getlineSize()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/parrot/controller/video/openGL/GLRendererYUV;->genTexCoods(FI)V

    .line 123
    invoke-virtual {p2}, Lcom/parrot/controller/video/openGL/AROpenGLTexture;->getComponentArray()[Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcodecs/ARCodecsComponent;->getlineSize()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/parrot/controller/video/openGL/GLRendererYUV;->previousYlineSize:F

    .line 124
    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method
