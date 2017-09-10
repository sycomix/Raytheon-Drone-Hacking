.class public abstract Lcom/parrot/engine3d/buffer/textures/GLTexture;
.super Ljava/lang/Object;
.source "GLTexture.java"

# interfaces
.implements Lcom/parrot/engine3d/IGLResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/engine3d/buffer/textures/GLTexture$Filter;,
        Lcom/parrot/engine3d/buffer/textures/GLTexture$Format;,
        Lcom/parrot/engine3d/buffer/textures/GLTexture$Target;
    }
.end annotation


# instance fields
.field protected mCreated:Z

.field protected mFilter:I

.field protected mFormat:I

.field protected mHeight:I

.field protected final mId:[I

.field protected mTarget:I

.field protected final mUnit:I

.field protected mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "target"    # I

    .prologue
    .line 47
    const/16 v0, 0x2601

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;-><init>(III)V

    .line 48
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "target"    # I
    .param p3, "filter"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mId:[I

    .line 54
    iput p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mUnit:I

    .line 55
    iput p2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mTarget:I

    .line 56
    iput p3, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mFilter:I

    .line 57
    return-void
.end method


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mTarget:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mWidth:I

    return v0
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mCreated:Z

    return v0
.end method

.method public abstract sendToShader(Lcom/parrot/engine3d/GLShader;)V
    .param p1    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mHeight:I

    .line 87
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mWidth:I

    .line 91
    iput p2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mHeight:I

    .line 92
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture;->mWidth:I

    .line 79
    return-void
.end method
