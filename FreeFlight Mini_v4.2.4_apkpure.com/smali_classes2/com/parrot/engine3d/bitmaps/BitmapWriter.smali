.class public Lcom/parrot/engine3d/bitmaps/BitmapWriter;
.super Ljava/lang/Object;
.source "BitmapWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    mul-int v2, p2, p3

    new-array v9, v2, [I

    .line 58
    .local v9, "bitmapBuffer":[I
    mul-int v2, p2, p3

    new-array v10, v2, [I

    .line 59
    .local v10, "bitmapSource":[I
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 60
    .local v8, "intBuffer":Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 65
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v13, v0, :cond_1

    .line 66
    mul-int v15, v13, p2

    .line 67
    .local v15, "offset1":I
    sub-int v2, p3, v13

    add-int/lit8 v2, v2, -0x1

    mul-int v16, v2, p2

    .line 68
    .local v16, "offset2":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v0, p2

    if-ge v14, v0, :cond_0

    .line 69
    add-int v2, v15, v14

    aget v19, v9, v2

    .line 70
    .local v19, "texturePixel":I
    shr-int/lit8 v2, v19, 0x10

    and-int/lit16 v11, v2, 0xff

    .line 71
    .local v11, "blue":I
    shl-int/lit8 v2, v19, 0x10

    const/high16 v3, 0xff0000

    and-int v18, v2, v3

    .line 72
    .local v18, "red":I
    const v2, -0xff0100

    and-int v2, v2, v19

    or-int v2, v2, v18

    or-int v17, v2, v11

    .line 73
    .local v17, "pixel":I
    add-int v2, v16, v14

    aput v17, v10, v2
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 65
    .end local v11    # "blue":I
    .end local v17    # "pixel":I
    .end local v18    # "red":I
    .end local v19    # "texturePixel":I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 76
    .end local v13    # "i":I
    .end local v14    # "j":I
    .end local v15    # "offset1":I
    .end local v16    # "offset2":I
    :catch_0
    move-exception v12

    .line 77
    .local v12, "e":Landroid/opengl/GLException;
    const/4 v2, 0x0

    .line 79
    .end local v12    # "e":Landroid/opengl/GLException;
    :goto_2
    return-object v2

    .restart local v13    # "i":I
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2
.end method

.method public static writeTextOnBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "textSize"    # I
    .param p3, "textColor"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 20
    new-array v7, v6, [Lcom/parrot/engine3d/bitmaps/BitmapText;

    const/4 v8, 0x0

    new-instance v0, Lcom/parrot/engine3d/bitmaps/BitmapText;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/parrot/engine3d/bitmaps/BitmapText;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v7, v8

    invoke-static {p0, v7}, Lcom/parrot/engine3d/bitmaps/BitmapWriter;->writeTextsOnBitmap(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static varargs writeTextsOnBitmap(Landroid/graphics/Bitmap;[Lcom/parrot/engine3d/bitmaps/BitmapText;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bitmapTexts"    # [Lcom/parrot/engine3d/bitmaps/BitmapText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 25
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 27
    .local v0, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 28
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    :cond_0
    invoke-virtual {p0, v0, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 33
    .local v6, "textBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    .local v4, "paint":Landroid/graphics/Paint;
    array-length v11, p1

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v1, p1, v9

    .line 37
    .local v1, "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    invoke-virtual {v1}, Lcom/parrot/engine3d/bitmaps/BitmapText;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/parrot/engine3d/bitmaps/BitmapText;->getColor()I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    invoke-virtual {v1}, Lcom/parrot/engine3d/bitmaps/BitmapText;->getSize()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    invoke-virtual {v1}, Lcom/parrot/engine3d/bitmaps/BitmapText;->getText()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "text":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4, v5, v10, v12, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 46
    invoke-virtual {v1}, Lcom/parrot/engine3d/bitmaps/BitmapText;->getCenterX()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v7, v12, v13

    .line 47
    .local v7, "x":I
    invoke-virtual {v1}, Lcom/parrot/engine3d/bitmaps/BitmapText;->getCenterY()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v8, v12, v13

    .line 49
    .local v8, "y":I
    int-to-float v12, v7

    int-to-float v13, v8

    invoke-virtual {v3, v5, v12, v13, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 36
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "bitmapText":Lcom/parrot/engine3d/bitmaps/BitmapText;
    :cond_2
    return-object v6
.end method
