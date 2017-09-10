.class public Lcom/parrot/engine3d/objects/GLObject3D;
.super Ljava/lang/Object;
.source "GLObject3D.java"

# interfaces
.implements Lcom/parrot/engine3d/objects/IGLDrawable;


# instance fields
.field protected mModelMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMvpMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mPosX:F

.field protected mPosY:F

.field protected mPosZ:F

.field protected mRotX:F

.field protected mRotY:F

.field protected mRotZ:F

.field protected mScaleX:F

.field protected mScaleY:F

.field protected mScaleZ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    .line 21
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mMvpMatrix:[F

    .line 22
    return-void
.end method


# virtual methods
.method public draw([F[F[F)V
    .locals 0
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

    .prologue
    .line 112
    return-void
.end method

.method public getPosX()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosX:F

    return v0
.end method

.method public getPosY()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosY:F

    return v0
.end method

.method public getPosZ()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosZ:F

    return v0
.end method

.method public setPosX(F)V
    .locals 0
    .param p1, "posX"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosX:F

    .line 38
    return-void
.end method

.method public setPosY(F)V
    .locals 0
    .param p1, "posY"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosY:F

    .line 46
    return-void
.end method

.method public setPosZ(F)V
    .locals 0
    .param p1, "posZ"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosZ:F

    .line 54
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "posX"    # F
    .param p2, "posY"    # F

    .prologue
    .line 25
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosZ:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parrot/engine3d/objects/GLObject3D;->setPosition(FFFZ)V

    .line 26
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parrot/engine3d/objects/GLObject3D;->setPosition(FFFZ)V

    .line 30
    return-void
.end method

.method public setPosition(FFFZ)V
    .locals 0
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F
    .param p4, "updateMatrix"    # Z

    .prologue
    .line 57
    iput p1, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosX:F

    .line 58
    iput p2, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosY:F

    .line 59
    iput p3, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosZ:F

    .line 60
    if-eqz p4, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLObject3D;->updateModelMatrix()V

    .line 63
    :cond_0
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .param p1, "rotX"    # F
    .param p2, "rotY"    # F
    .param p3, "rotZ"    # F

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parrot/engine3d/objects/GLObject3D;->setRotation(FFFZ)V

    .line 67
    return-void
.end method

.method public setRotation(FFFZ)V
    .locals 0
    .param p1, "rotX"    # F
    .param p2, "rotY"    # F
    .param p3, "rotZ"    # F
    .param p4, "updateMatrix"    # Z

    .prologue
    .line 70
    iput p1, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotX:F

    .line 71
    iput p2, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotY:F

    .line 72
    iput p3, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotZ:F

    .line 73
    if-eqz p4, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLObject3D;->updateModelMatrix()V

    .line 76
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, p1, v0}, Lcom/parrot/engine3d/objects/GLObject3D;->setScale(FFFZ)V

    .line 80
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parrot/engine3d/objects/GLObject3D;->setScale(FFFZ)V

    .line 84
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 0
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F
    .param p4, "updateMatrix"    # Z

    .prologue
    .line 87
    iput p1, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mScaleX:F

    .line 88
    iput p2, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mScaleY:F

    .line 89
    iput p3, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mScaleZ:F

    .line 90
    if-eqz p4, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/parrot/engine3d/objects/GLObject3D;->updateModelMatrix()V

    .line 93
    :cond_0
    return-void
.end method

.method public updateModelMatrix()V
    .locals 11

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 97
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    iget v2, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosX:F

    iget v5, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosY:F

    iget v6, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mPosZ:F

    invoke-static {v0, v1, v2, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 98
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    iget v2, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotX:F

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 101
    :cond_0
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 102
    iget-object v5, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    iget v7, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotY:F

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 104
    :cond_1
    iget v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotZ:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 105
    iget-object v5, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    iget v7, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mRotZ:F

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mModelMatrix:[F

    iget v2, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mScaleX:F

    iget v3, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mScaleY:F

    iget v4, p0, Lcom/parrot/engine3d/objects/GLObject3D;->mScaleZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 108
    return-void
.end method
