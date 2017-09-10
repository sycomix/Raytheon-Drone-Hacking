.class public Lcom/parrot/engine3d/GLCamera;
.super Ljava/lang/Object;
.source "GLCamera.java"


# instance fields
.field public final mLookAtX:F

.field public final mLookAtY:F

.field public final mLookAtZ:F

.field public final mPosX:F

.field public final mPosY:F

.field public final mPosZ:F

.field public final mUpX:F

.field public final mUpY:F

.field public final mUpZ:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0
    .param p1, "posX"    # F
    .param p2, "posY"    # F
    .param p3, "posZ"    # F
    .param p4, "lookAtX"    # F
    .param p5, "lookAtY"    # F
    .param p6, "lookAtZ"    # F
    .param p7, "upX"    # F
    .param p8, "upY"    # F
    .param p9, "upZ"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/parrot/engine3d/GLCamera;->mPosX:F

    .line 11
    iput p2, p0, Lcom/parrot/engine3d/GLCamera;->mPosY:F

    .line 12
    iput p3, p0, Lcom/parrot/engine3d/GLCamera;->mPosZ:F

    .line 14
    iput p4, p0, Lcom/parrot/engine3d/GLCamera;->mLookAtX:F

    .line 15
    iput p5, p0, Lcom/parrot/engine3d/GLCamera;->mLookAtY:F

    .line 16
    iput p6, p0, Lcom/parrot/engine3d/GLCamera;->mLookAtZ:F

    .line 18
    iput p7, p0, Lcom/parrot/engine3d/GLCamera;->mUpX:F

    .line 19
    iput p8, p0, Lcom/parrot/engine3d/GLCamera;->mUpY:F

    .line 20
    iput p9, p0, Lcom/parrot/engine3d/GLCamera;->mUpZ:F

    .line 21
    return-void
.end method
