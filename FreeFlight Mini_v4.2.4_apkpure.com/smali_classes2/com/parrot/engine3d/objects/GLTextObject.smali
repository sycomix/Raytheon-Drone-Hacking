.class public Lcom/parrot/engine3d/objects/GLTextObject;
.super Lcom/parrot/engine3d/objects/GLRect3D;
.source "GLTextObject.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V
    .locals 1
    .param p1, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "texts"    # [Lcom/parrot/engine3d/bitmaps/BitmapText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-static {p2, p3}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->createTextureWithText(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>(Lcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 21
    iput-object p2, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    iput-object p3, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    .line 23
    return-void
.end method

.method public varargs constructor <init>([FLcom/parrot/engine3d/GLShader;Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)V
    .locals 1
    .param p1, "vertices"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "shader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "texts"    # [Lcom/parrot/engine3d/bitmaps/BitmapText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-static {p3, p4}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->createTextureWithText(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/engine3d/objects/GLRect3D;-><init>([FLcom/parrot/engine3d/GLShader;Lcom/parrot/engine3d/buffer/textures/GLTexture;)V

    .line 27
    iput-object p3, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p4, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    .line 29
    return-void
.end method


# virtual methods
.method public setTextVisibility(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "isVisible"    # Z

    .prologue
    .line 49
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    aget-object v0, v1, p1

    .line 51
    .local v0, "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/bitmaps/BitmapText;->setVisibility(Z)V

    .line 53
    .end local v0    # "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :cond_0
    return-void
.end method

.method public updateText(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 32
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    aget-object v0, v1, p1

    .line 34
    .local v0, "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    invoke-virtual {v0, p2}, Lcom/parrot/engine3d/bitmaps/BitmapText;->setText(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    instance-of v1, v1, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    check-cast v1, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    iget-object v2, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-static {v2, v3}, Lcom/parrot/engine3d/bitmaps/BitmapWriter;->writeTextsOnBitmap(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    .end local v0    # "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :cond_0
    return-void
.end method

.method public updateTextPosition(III)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I

    .prologue
    .line 42
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    aget-object v0, v1, p1

    .line 44
    .local v0, "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    invoke-virtual {v0, p2, p3}, Lcom/parrot/engine3d/bitmaps/BitmapText;->setCenter(II)V

    .line 46
    .end local v0    # "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :cond_0
    return-void
.end method

.method public updateTextureBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    iput-object p1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    instance-of v0, v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mTexture:Lcom/parrot/engine3d/buffer/textures/GLTexture;

    check-cast v0, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;

    iget-object v1, p0, Lcom/parrot/engine3d/objects/GLTextObject;->mBitmapTexts:[Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-static {p1, v1}, Lcom/parrot/engine3d/bitmaps/BitmapWriter;->writeTextsOnBitmap(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/buffer/textures/GLTexture2D;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    :cond_0
    return-void
.end method
