.class public Lcom/parrot/engine3d/objects/GLCharacter;
.super Lcom/parrot/engine3d/objects/GLMesh;
.source "GLCharacter.java"


# direct methods
.method public constructor <init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;[F)V
    .locals 3
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "texture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "texCords"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/parrot/engine3d/objects/GLMesh;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 12
    const/16 v2, 0x14

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 19
    .local v1, "vertices":[F
    const/4 v2, 0x6

    new-array v0, v2, [S

    fill-array-data v0, :array_1

    .line 23
    .local v0, "indexes":[S
    invoke-virtual {p0, v1, p3}, Lcom/parrot/engine3d/objects/GLCharacter;->updateVerticesTexCoords([F[F)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/parrot/engine3d/objects/GLCharacter;->setVertices([F)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/parrot/engine3d/objects/GLCharacter;->setIndexes([S)V

    .line 26
    return-void

    .line 12
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 19
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x1s
        0x3s
    .end array-data
.end method


# virtual methods
.method public updateVerticesTexCoords([F[F)V
    .locals 3
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "texCords"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, "it":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 30
    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x2

    aget v2, p2, v2

    aput v2, p1, v1

    .line 31
    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    aput v2, p1, v1

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
