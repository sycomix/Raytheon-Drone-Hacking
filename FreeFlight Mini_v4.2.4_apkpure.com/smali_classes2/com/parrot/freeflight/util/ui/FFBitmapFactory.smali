.class public Lcom/parrot/freeflight/util/ui/FFBitmapFactory;
.super Ljava/lang/Object;
.source "FFBitmapFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 13
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 14
    .local v3, "height":I
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    .local v6, "width":I
    div-int v0, v6, v3

    .line 16
    .local v0, "aspectRatio":I
    const/4 v4, 0x1

    .line 17
    .local v4, "inSampleSize":I
    mul-int v5, v0, p2

    .line 19
    .local v5, "newWidth":I
    if-gt v3, p2, :cond_0

    if-le v6, v5, :cond_1

    .line 21
    :cond_0
    div-int/lit8 v1, v3, 0x2

    .line 22
    .local v1, "halfHeight":I
    div-int/lit8 v2, v6, 0x2

    .line 26
    .local v2, "halfWidth":I
    :goto_0
    div-int v7, v1, v4

    if-le v7, p2, :cond_1

    div-int v7, v2, v4

    if-le v7, v5, :cond_1

    .line 28
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 32
    .end local v1    # "halfHeight":I
    .end local v2    # "halfWidth":I
    :cond_1
    return v4
.end method

.method public static decodeSampledBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const/4 v2, 0x0

    .line 62
    :goto_0
    return-object v2

    .line 48
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 49
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 51
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    invoke-static {v1, p1, p2}, Lcom/parrot/freeflight/util/ui/FFBitmapFactory;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    :goto_1
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 59
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/parrot/freeflight/util/ui/FFBitmapFactory;->decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .param p4, "disableUpscale"    # Z

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 75
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 79
    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/util/ui/FFBitmapFactory;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 85
    :cond_0
    if-eqz p4, :cond_1

    .line 86
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ge v1, v2, :cond_1

    .line 87
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 91
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
