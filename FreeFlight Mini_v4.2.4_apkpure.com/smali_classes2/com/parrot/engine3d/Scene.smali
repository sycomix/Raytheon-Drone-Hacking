.class public abstract Lcom/parrot/engine3d/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field protected mCamera:Lcom/parrot/engine3d/GLCamera;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mHeight:I

.field protected mHeight2:I

.field protected mProjection:Lcom/parrot/engine3d/GLProjection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final mProjectionMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mViewMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mVpMatrix:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mWidth:I

.field protected mWidth2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/engine3d/Scene;->mViewMatrix:[F

    .line 29
    iget-object v0, p0, Lcom/parrot/engine3d/Scene;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 31
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/engine3d/Scene;->mProjectionMatrix:[F

    .line 32
    iget-object v0, p0, Lcom/parrot/engine3d/Scene;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 34
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/parrot/engine3d/Scene;->mVpMatrix:[F

    .line 35
    iget-object v0, p0, Lcom/parrot/engine3d/Scene;->mVpMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 36
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/parrot/engine3d/Scene;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/parrot/engine3d/Scene;->mWidth:I

    return v0
.end method

.method public onContextChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/parrot/engine3d/Scene;->mWidth:I

    .line 40
    iput p2, p0, Lcom/parrot/engine3d/Scene;->mHeight:I

    .line 42
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/parrot/engine3d/Scene;->mWidth2:I

    .line 43
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/parrot/engine3d/Scene;->mHeight2:I

    .line 44
    return-void
.end method

.method public abstract onContextCreated()V
.end method

.method public abstract onContextReleased()V
.end method

.method public abstract render()V
.end method
