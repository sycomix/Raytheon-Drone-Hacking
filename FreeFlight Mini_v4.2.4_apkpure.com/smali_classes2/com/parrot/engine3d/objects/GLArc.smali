.class public Lcom/parrot/engine3d/objects/GLArc;
.super Lcom/parrot/engine3d/objects/GLObject3D;
.source "GLArc.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/engine3d/objects/GLArc$Properties;
    }
.end annotation


# static fields
.field private static final A_INDEX:I = 0x3

.field private static final B_INDEX:I = 0x2

.field private static final COLORS_BUFFER_STRIDE:I = 0x10

.field private static final G_INDEX:I = 0x1

.field private static final NB_POINTS:I = 0x168

.field private static final R_INDEX:I = 0x0

.field private static final TOTAL_ANGLE:F = 360.0f

.field private static final VERTICES_BUFFER_STRIDE:I = 0xc


# instance fields
.field private mBorderThickness:F

.field private mColorsBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mColorsCoords:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDrawingMode:I

.field private mEndColor:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNbVerticesToDraw:I

.field private mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mStartColor:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVerticesCoords:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/objects/GLArc$Properties;F[F[F)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "properties"    # Lcom/parrot/engine3d/objects/GLArc$Properties;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "borderThickness"    # F
    .param p4, "startColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "endColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLObject3D;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mDrawingMode:I

    .line 63
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    .line 64
    iput-object p2, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    .line 65
    iput p3, p0, Lcom/parrot/engine3d/objects/GLArc;->mBorderThickness:F

    .line 66
    iput-object p4, p0, Lcom/parrot/engine3d/objects/GLArc;->mStartColor:[F

    .line 67
    iput-object p5, p0, Lcom/parrot/engine3d/objects/GLArc;->mEndColor:[F

    .line 69
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->initPosition()V

    .line 70
    const/16 v0, 0x438

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

    .line 71
    const/16 v0, 0x5a0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    .line 72
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateArcVertices()V

    .line 73
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateArcColors()V

    .line 74
    return-void
.end method

.method private calculateAndUpdateBuffers()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateAndUpdateVerticesBuffer()V

    .line 170
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateAndUpdateColorsBuffer()V

    .line 171
    return-void
.end method

.method private calculateAndUpdateColorsBuffer()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateArcColors()V

    .line 180
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->updateColorsBuffer()V

    .line 181
    return-void
.end method

.method private calculateAndUpdateVerticesBuffer()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateArcVertices()V

    .line 175
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->updateVerticesBuffer()V

    .line 176
    return-void
.end method

.method private calculateArcColors()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    const/4 v1, 0x0

    .local v1, "it":I
    :goto_0
    iget v4, p0, Lcom/parrot/engine3d/objects/GLArc;->mNbVerticesToDraw:I

    if-ge v1, v4, :cond_0

    .line 113
    mul-int/lit8 v0, v1, 0x4

    .line 114
    .local v0, "colorIndex":I
    int-to-float v4, v1

    iget v5, p0, Lcom/parrot/engine3d/objects/GLArc;->mNbVerticesToDraw:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 115
    .local v2, "progression":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v2

    .line 116
    .local v3, "progressionInv":F
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    iget-object v5, p0, Lcom/parrot/engine3d/objects/GLArc;->mStartColor:[F

    aget v5, v5, v8

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mEndColor:[F

    aget v6, v6, v8

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v4, v0

    .line 117
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mStartColor:[F

    aget v6, v6, v9

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/parrot/engine3d/objects/GLArc;->mEndColor:[F

    aget v7, v7, v9

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 118
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mStartColor:[F

    aget v6, v6, v10

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/parrot/engine3d/objects/GLArc;->mEndColor:[F

    aget v7, v7, v10

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 119
    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mStartColor:[F

    aget v6, v6, v11

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/parrot/engine3d/objects/GLArc;->mEndColor:[F

    aget v7, v7, v11

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "colorIndex":I
    .end local v2    # "progression":F
    .end local v3    # "progressionInv":F
    :cond_0
    return-void
.end method

.method private calculateArcVertices()V
    .locals 10

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    .line 83
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v6}, Lcom/parrot/engine3d/objects/GLArc$Properties;->getSweepAngle()F

    move-result v6

    mul-float/2addr v6, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mNbVerticesToDraw:I

    .line 85
    const/high16 v4, 0x3f800000    # 1.0f

    .line 86
    .local v4, "step":F
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v6}, Lcom/parrot/engine3d/objects/GLArc$Properties;->getRadius()F

    move-result v1

    .line 88
    .local v1, "radius":F
    const/4 v5, 0x0

    .line 89
    .local v5, "verticesIt":I
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v6}, Lcom/parrot/engine3d/objects/GLArc$Properties;->getStartAngle()F

    move-result v2

    .line 90
    .local v2, "startAngle":F
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v6}, Lcom/parrot/engine3d/objects/GLArc$Properties;->getSweepAngle()F

    move-result v6

    add-float v0, v2, v6

    .line 92
    .local v0, "endAngle":F
    :goto_0
    cmpg-float v6, v2, v0

    if-gez v6, :cond_0

    .line 93
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 94
    .local v3, "startAngleRad":F
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v1

    aput v7, v6, v5

    .line 95
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

    add-int/lit8 v7, v5, 0x1

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v1

    aput v8, v6, v7

    .line 96
    iget-object v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

    add-int/lit8 v7, v5, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 97
    add-int/lit8 v5, v5, 0x3

    .line 98
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v2, v6

    .line 99
    goto :goto_0

    .line 101
    .end local v3    # "startAngleRad":F
    :cond_0
    iget v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mNbVerticesToDraw:I

    const/16 v7, 0x168

    if-ne v6, v7, :cond_1

    .line 102
    const/4 v6, 0x2

    iput v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mDrawingMode:I

    .line 106
    :goto_1
    return-void

    .line 104
    :cond_1
    const/4 v6, 0x3

    iput v6, p0, Lcom/parrot/engine3d/objects/GLArc;->mDrawingMode:I

    goto :goto_1
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

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

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 160
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

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

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    .line 164
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 165
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    return-void
.end method

.method private initPosition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0, v0, v0, v2}, Lcom/parrot/engine3d/objects/GLArc;->setPosition(FFFZ)V

    .line 78
    invoke-virtual {p0, v0, v0, v0, v2}, Lcom/parrot/engine3d/objects/GLArc;->setRotation(FFFZ)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/parrot/engine3d/objects/GLArc;->setScale(FFFZ)V

    .line 80
    return-void
.end method

.method private updateColorsBuffer()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 193
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    :cond_0
    return-void
.end method

.method private updateVerticesBuffer()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesCoords:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 186
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->createBuffers()V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public deleteGLResources()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public draw([F[F[F)V
    .locals 12
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
    const/16 v11, 0x1406

    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/parrot/engine3d/objects/GLArc;->mModelMatrix:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 129
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 130
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v0, v0, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string v3, "uMvpMatrix"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 131
    .local v10, "mvpMatrixHandle":I
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v0, v0, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v3, "aPosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    .local v2, "positionHandle":I
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    iget-object v0, v0, Lcom/parrot/engine3d/GLShader;->mAttributes:Ljava/util/Map;

    const-string v3, "aColor"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 134
    .local v9, "colorHandle":I
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/parrot/engine3d/objects/GLArc;->mMvpMatrix:[F

    invoke-static {v10, v0, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 136
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 137
    invoke-static {v9}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 139
    const/4 v3, 0x3

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/parrot/engine3d/objects/GLArc;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    move v4, v11

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 140
    const/4 v4, 0x4

    const/16 v7, 0x10

    iget-object v8, p0, Lcom/parrot/engine3d/objects/GLArc;->mColorsBuffer:Ljava/nio/FloatBuffer;

    move v3, v9

    move v5, v11

    move v6, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mBorderThickness:F

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 143
    iget v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mDrawingMode:I

    iget v3, p0, Lcom/parrot/engine3d/objects/GLArc;->mNbVerticesToDraw:I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 145
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 146
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 148
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 150
    .end local v2    # "positionHandle":I
    .end local v9    # "colorHandle":I
    .end local v10    # "mvpMatrixHandle":I
    :cond_0
    return-void
.end method

.method public getProperties()Lcom/parrot/engine3d/objects/GLArc$Properties;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    return-object v0
.end method

.method public getShader()Lcom/parrot/engine3d/GLShader;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    return-object v0
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 213
    return-void
.end method

.method public setShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 0
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLArc;->mShader:Lcom/parrot/engine3d/GLShader;

    .line 217
    return-void
.end method

.method public updateAngles(FF)V
    .locals 2
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F

    .prologue
    const/4 v1, 0x0

    .line 231
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    .line 232
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 233
    sub-float/2addr p1, p2

    .line 235
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 236
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLArc$Properties;->setStartAngle(F)V

    .line 240
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/objects/GLArc$Properties;->setSweepAngle(F)V

    .line 241
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateAndUpdateBuffers()V

    .line 242
    return-void
.end method

.method public updateColors([F[F)V
    .locals 0
    .param p1, "startColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "endColor"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLArc;->mStartColor:[F

    .line 226
    iput-object p2, p0, Lcom/parrot/engine3d/objects/GLArc;->mEndColor:[F

    .line 227
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateAndUpdateColorsBuffer()V

    .line 228
    return-void
.end method

.method public updateRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLArc;->mProperties:Lcom/parrot/engine3d/objects/GLArc$Properties;

    invoke-virtual {v0, p1}, Lcom/parrot/engine3d/objects/GLArc$Properties;->setRadius(F)V

    .line 246
    invoke-direct {p0}, Lcom/parrot/engine3d/objects/GLArc;->calculateAndUpdateVerticesBuffer()V

    .line 247
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    return-void
.end method
