.class public Lcom/parrot/engine3d/objects/GLArc$Properties;
.super Ljava/lang/Object;
.source "GLArc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/engine3d/objects/GLArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# instance fields
.field private mRadius:F

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "startAngle"    # F
    .param p2, "sweepAngle"    # F
    .param p3, "radius"    # F

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/parrot/engine3d/objects/GLArc$Properties;->setStartAngle(F)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/parrot/engine3d/objects/GLArc$Properties;->setSweepAngle(F)V

    .line 263
    iput p3, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mRadius:F

    .line 264
    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mRadius:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mSweepAngle:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 291
    iput p1, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mRadius:F

    .line 292
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1
    .param p1, "startAngle"    # F

    .prologue
    .line 271
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    iput v0, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mStartAngle:F

    .line 272
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 2
    .param p1, "sweepAngle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 279
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 280
    iput v1, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mSweepAngle:F

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iput p1, p0, Lcom/parrot/engine3d/objects/GLArc$Properties;->mSweepAngle:F

    goto :goto_0
.end method
