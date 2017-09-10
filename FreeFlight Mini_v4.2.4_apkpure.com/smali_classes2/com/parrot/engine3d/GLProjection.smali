.class public Lcom/parrot/engine3d/GLProjection;
.super Ljava/lang/Object;
.source "GLProjection.java"


# instance fields
.field public final mBottom:F

.field public final mFar:F

.field public final mLeft:F

.field public final mNear:F

.field public final mRight:F

.field public final mTop:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/parrot/engine3d/GLProjection;->mLeft:F

    .line 11
    iput p2, p0, Lcom/parrot/engine3d/GLProjection;->mRight:F

    .line 13
    iput p3, p0, Lcom/parrot/engine3d/GLProjection;->mBottom:F

    .line 14
    iput p4, p0, Lcom/parrot/engine3d/GLProjection;->mTop:F

    .line 16
    iput p5, p0, Lcom/parrot/engine3d/GLProjection;->mNear:F

    .line 17
    iput p6, p0, Lcom/parrot/engine3d/GLProjection;->mFar:F

    .line 18
    return-void
.end method
