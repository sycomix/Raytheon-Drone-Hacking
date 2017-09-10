.class public Lcom/parrot/engine3d/objects/GLRect3D;
.super Lcom/parrot/engine3d/objects/GLMesh;
.source "GLRect3D.java"


# static fields
.field protected static final RECT_INDICES:[S

.field protected static final SQUARE_VERTICES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/engine3d/objects/GLRect3D;->SQUARE_VERTICES:[F

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/engine3d/objects/GLRect3D;->RECT_INDICES:[S

    return-void

    .line 10
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

    .line 18
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

.method public constructor <init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 2
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "texture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    sget-object v0, Lcom/parrot/engine3d/objects/GLRect3D;->SQUARE_VERTICES:[F

    sget-object v1, Lcom/parrot/engine3d/objects/GLRect3D;->RECT_INDICES:[S

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/parrot/engine3d/objects/GLMesh;-><init>([F[SLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 26
    return-void
.end method

.method public constructor <init>([FLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V
    .locals 1
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "texture"    # Lcom/parrot/engine3d/buffer/textures/GLTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    sget-object v0, Lcom/parrot/engine3d/objects/GLRect3D;->RECT_INDICES:[S

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/parrot/engine3d/objects/GLMesh;-><init>([F[SLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 34
    return-void
.end method

.method public constructor <init>([F[S)V
    .locals 0
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indices"    # [S
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parrot/engine3d/objects/GLMesh;-><init>([F[S)V

    .line 30
    return-void
.end method
