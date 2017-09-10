.class public Lcom/parrot/freeflight/view/FixedRatioTextureView;
.super Landroid/view/TextureView;
.source "FixedRatioTextureView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FFMini.RatioTextureView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private adjustAspect(Landroid/view/TextureView;II)V
    .locals 18
    .param p1, "textureView"    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "videoWidth"    # I
    .param p3, "videoHeight"    # I

    .prologue
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/TextureView;->getWidth()I

    move-result v9

    .line 37
    .local v9, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/TextureView;->getHeight()I

    move-result v8

    .line 38
    .local v8, "viewHeight":I
    move/from16 v0, p3

    int-to-double v14, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 40
    .local v2, "aspectRatio":D
    move v4, v8

    .line 41
    .local v4, "newHeight":I
    int-to-double v14, v8

    div-double/2addr v14, v2

    double-to-int v5, v14

    .line 42
    .local v5, "newWidth":I
    sub-int v6, v5, v9

    .line 43
    .local v6, "off":I
    if-gez v6, :cond_0

    if-lez v9, :cond_0

    .line 44
    int-to-double v14, v9

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 45
    .local v12, "zoomFactor":D
    int-to-double v14, v5

    mul-double/2addr v14, v12

    double-to-int v5, v14

    .line 46
    int-to-double v14, v4

    mul-double/2addr v14, v12

    double-to-int v4, v14

    .line 50
    .end local v12    # "zoomFactor":D
    :cond_0
    sub-int v14, v9, v5

    div-int/lit8 v10, v14, 0x2

    .line 51
    .local v10, "xoff":I
    sub-int v14, v8, v4

    div-int/lit8 v11, v14, 0x2

    .line 52
    .local v11, "yoff":I
    const-string v14, "FFMini.RatioTextureView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "video="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " view="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " newView="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " off="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .local v7, "txform":Landroid/graphics/Matrix;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 59
    int-to-float v14, v5

    int-to-float v15, v9

    div-float/2addr v14, v15

    int-to-float v15, v4

    int-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 60
    int-to-float v14, v10

    int-to-float v15, v11

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 32
    const/16 v0, 0x280

    const/16 v1, 0x170

    invoke-direct {p0, p0, v0, v1}, Lcom/parrot/freeflight/view/FixedRatioTextureView;->adjustAspect(Landroid/view/TextureView;II)V

    .line 33
    return-void
.end method
