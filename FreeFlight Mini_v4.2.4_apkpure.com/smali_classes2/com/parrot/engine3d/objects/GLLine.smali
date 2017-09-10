.class public Lcom/parrot/engine3d/objects/GLLine;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLLine.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# static fields
.field private static final COLORS_BUFFER_STRIDE:I = 0x10

.field private static final VERTICES_BUFFER_STRIDE:I = 0xc


# instance fields
.field private mColorsBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLineThickness:F

.field private mResourcesCreated:Z

.field private mShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVerticesColors:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVerticesCords:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/GLShader;F[F[F)V
    .locals 0
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lineThickness"    # F
    .param p3, "verticesCords"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "verticesColors"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    .line 43
    iput p2, p0, Lcom/parrot/engine3d/objects/GLLine;->mLineThickness:F

    .line 44
    iput-object p3, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    .line 45
    iput-object p4, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    .line 46
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLLine;->initPosition()V

    .line 47
    return-void
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 250
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 251
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 253
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    .line 254
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 255
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    return-void
.end method

.method private initPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, v0, v0, v2}, Lcom/parrot/engine3d/objects/GLLine;->setPosition(FFFZ)V

    .line 51
    invoke-virtual {p0, v0, v0, v0, v2}, Lcom/parrot/engine3d/objects/GLLine;->setRotation(FFFZ)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/parrot/engine3d/objects/GLLine;->setScale(FFFZ)V

    .line 53
    return-void
.end method

.method private updateVerticesBuffer()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 88
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mResourcesCreated:Z

    return v0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLLine;->createBuffers()V

    .line 224
    iput-boolean v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mResourcesCreated:Z

    .line 225
    return v0
.end method

.method public deleteGLResources()V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public draw([F[F[F)V
    .locals 9
    .param p1, "vpMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "projectionMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 194
    iget-boolean v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mResourcesCreated:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mMvpMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLLine;->mModelMatrix:[F

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 197
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 198
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string v2, "uMvpMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 199
    .local v8, "mvpMatrixHandle":I
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v2, "aPosition"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    .local v0, "positionHandle":I
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v1, v1, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v2, "aColor"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 202
    .local v7, "colorHandle":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parrot/engine3d/objects/GLLine;->mMvpMatrix:[F

    const/4 v4, 0x0

    invoke-static {v8, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 204
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 205
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 207
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 208
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    move v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 210
    iget v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mLineThickness:F

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 211
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 213
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 214
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 216
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 218
    .end local v0    # "positionHandle":I
    .end local v7    # "colorHandle":I
    .end local v8    # "mvpMatrixHandle":I
    :cond_0
    return-void
.end method

.method public getColors()[F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    return-object v0
.end method

.method public getFirstVertexB()F
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getFirstVertexG()F
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getFirstVertexR()F
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getFirstVertexX()F
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getFirstVertexY()F
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getFirstVertexZ()F
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getLineThickness()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mLineThickness:F

    return v0
.end method

.method public getSecondVertexAlpha()F
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public getSecondVertexB()F
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getSecondVertexG()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getSecondVertexR()F
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getSecondVertexX()F
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getSecondVertexY()F
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getSecondVertexZ()F
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/parrot/engine3d/objects/GLLine;->mResourcesCreated:Z

    .line 246
    return-void
.end method

.method public setColors(FFFFFFFF)V
    .locals 2
    .param p1, "point1R"    # F
    .param p2, "point1G"    # F
    .param p3, "point1B"    # F
    .param p4, "point1Alpha"    # F
    .param p5, "point2R"    # F
    .param p6, "point2G"    # F
    .param p7, "point2B"    # F
    .param p8, "point2Alpha"    # F

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 124
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 126
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 128
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 129
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 130
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x6

    aput p7, v0, v1

    .line 131
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x7

    aput p8, v0, v1

    .line 133
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLLine;->updateColorsBuffer()V

    .line 134
    return-void
.end method

.method public setFirstVertexColor(FFFF)V
    .locals 2
    .param p1, "point1R"    # F
    .param p2, "point1G"    # F
    .param p3, "point1B"    # F
    .param p4, "point1Alpha"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 138
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 140
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 141
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLLine;->updateColorsBuffer()V

    .line 142
    return-void
.end method

.method public setFirstVertexCoords(FFF)V
    .locals 2
    .param p1, "point1X"    # F
    .param p2, "point1Y"    # F
    .param p3, "point1Z"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 73
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 75
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLLine;->updateVerticesBuffer()V

    .line 76
    return-void
.end method

.method public setSecondVertexColor(FFFF)V
    .locals 2
    .param p1, "point2R"    # F
    .param p2, "point2G"    # F
    .param p3, "point2B"    # F
    .param p4, "point2Alpha"    # F

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 146
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 147
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x6

    aput p3, v0, v1

    .line 148
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    const/4 v1, 0x7

    aput p4, v0, v1

    .line 149
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLLine;->updateColorsBuffer()V

    .line 150
    return-void
.end method

.method public setSecondVertexCoords(FFF)V
    .locals 2
    .param p1, "point2X"    # F
    .param p2, "point2Y"    # F
    .param p3, "point2Z"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 80
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x5

    aput p3, v0, v1

    .line 82
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLLine;->updateVerticesBuffer()V

    .line 83
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 0
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLLine;->mShader:Lcom/parrot/engine3d/GLShader;

    .line 57
    return-void
.end method

.method public setVerticesCoords(FFFFFF)V
    .locals 2
    .param p1, "point1X"    # F
    .param p2, "point1Y"    # F
    .param p3, "point1Z"    # F
    .param p4, "point2X"    # F
    .param p5, "point2Y"    # F
    .param p6, "point2Z"    # F

    .prologue
    .line 60
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 61
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 62
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 64
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 65
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x4

    aput p5, v0, v1

    .line 66
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesCords:[F

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 68
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLLine;->updateVerticesBuffer()V

    .line 69
    return-void
.end method

.method public updateColorsBuffer()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLLine;->mVerticesColors:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 183
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLLine;->mColorsBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    :cond_0
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 231
    return-void
.end method
