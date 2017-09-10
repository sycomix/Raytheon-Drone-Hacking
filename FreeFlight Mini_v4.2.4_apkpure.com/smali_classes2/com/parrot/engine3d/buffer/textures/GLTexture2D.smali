.class public Lcom/parrot/engine3d/buffer/textures/GLTexture2D;
.super Lcom/parrot/engine3d/buffer/textures/GLTexture;
.source "GLTexture2D.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mResourceId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "unit"    # I

    .prologue
    .line 26
    const/16 v0, 0xde1

    invoke-direct {p0, p2, v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;-><init>(II)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mResourceId:I

    .line 29
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "unit"    # I
    .param p5, "filter"    # I

    .prologue
    .line 38
    const/16 v0, 0xde1

    invoke-direct {p0, p4, v0, p5}, Lcom/parrot/engine3d/buffer/textures/GLTexture;-><init>(III)V

    .line 39
    iput p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mWidth:I

    .line 40
    iput p2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mHeight:I

    .line 41
    iput p3, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mFormat:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "unit"    # I

    .prologue
    .line 32
    const/16 v0, 0xde1

    invoke-direct {p0, p2, v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;-><init>(II)V

    .line 33
    iput-object p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mResourceId:I

    .line 35
    return-void
.end method

.method private cleanResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static createAndInit(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "unit"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    invoke-direct {v0, p1, p2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(II)V

    .line 53
    .local v0, "texture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    invoke-virtual {v0, p0}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->createGLResources(Landroid/content/res/Resources;)Z

    .line 54
    return-object v0
.end method

.method public static varargs createTextureWithText(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Lcom/parrot/engine3d/buffer/textures/GLTexture;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "texts"    # [Lcom/parrot/engine3d/bitmaps/BitmapText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    invoke-static {p0, p1}, Lcom/parrot/engine3d/bitmaps/BitmapWriter;->writeTextsOnBitmap(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method private getBitmapFromAttributes(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    :goto_0
    return-object v1

    .line 65
    :cond_0
    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mResourceId:I

    if-eqz v1, :cond_1

    .line 66
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 68
    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mResourceId:I

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 70
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areResourcesCreated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public createGLResources(Landroid/content/res/Resources;)Z
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    invoke-static {v10, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 86
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    aget v0, v0, v1

    if-eqz v0, :cond_3

    .line 87
    invoke-direct {p0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->getBitmapFromAttributes(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 88
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 89
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mWidth:I

    .line 90
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mHeight:I

    .line 93
    :cond_0
    if-nez v9, :cond_1

    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mHeight:I

    if-lez v0, :cond_2

    .line 94
    :cond_1
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    iget-object v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 96
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    const/16 v2, 0x2801

    iget v3, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mFilter:I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 97
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    const/16 v2, 0x2800

    iget v3, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mFilter:I

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 99
    if-eqz v9, :cond_4

    .line 100
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    invoke-static {v0, v1, v9, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 104
    :goto_0
    iput-boolean v10, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mCreated:Z

    .line 106
    :cond_2
    invoke-direct {p0, v9}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->cleanResources(Landroid/graphics/Bitmap;)V

    move v1, v10

    .line 109
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    return v1

    .line 102
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    iget v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mFormat:I

    iget v3, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mWidth:I

    iget v4, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mHeight:I

    iget v6, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mFormat:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public deleteGLResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 131
    iput-boolean v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mCreated:Z

    .line 133
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 158
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 146
    const v0, 0x84c0

    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mUnit:I

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 147
    iget v0, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 148
    return-void
.end method

.method public markResourcesCreated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 142
    return-void
.end method

.method public sendToShader(Lcom/parrot/engine3d/GLShader;)V
    .locals 2
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    iget-object v0, p1, Lcom/parrot/engine3d/GLShader;->mUniforms:Ljava/util/Map;

    const-string v1, "uTextureSampler"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mUnit:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 153
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "textureBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method

.method public updateResources(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    aget v1, v1, v3

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->getBitmapFromAttributes(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 118
    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    iget-object v2, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mId:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 119
    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    invoke-static {v1, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 120
    iget v1, p0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->mTarget:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
    :cond_0
    invoke-direct {p0, v0}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->cleanResources(Landroid/graphics/Bitmap;)V

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
