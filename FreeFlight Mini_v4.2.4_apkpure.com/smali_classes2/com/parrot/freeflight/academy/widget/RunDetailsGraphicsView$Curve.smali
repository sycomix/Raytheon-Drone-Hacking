.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
.super Ljava/lang/Object;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Curve"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mValues:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "virtualScreen"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mValues:Ljava/util/List;

    .line 727
    iput-object p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mPaint:Landroid/graphics/Paint;

    .line 728
    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    .line 729
    return-void
.end method


# virtual methods
.method public addValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 740
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 737
    return-void
.end method

.method protected computeVerticalPosition(FFFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F
    .param p4, "height"    # F

    .prologue
    .line 744
    sub-float v1, p1, p2

    sub-float v2, p3, p2

    div-float v0, v1, v2

    .line 745
    .local v0, "positionRatio":F
    mul-float v1, v0, p4

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "minDisplayedValue"    # F
    .param p4, "maxDisplayedValue"    # F

    .prologue
    .line 749
    if-nez p2, :cond_0

    .line 809
    :goto_0
    return-void

    .line 753
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mValues:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    int-to-float v11, v0

    .line 754
    .local v11, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->getRelativeStartPosition()F

    move-result v19

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 755
    .local v16, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->getRelativeEndPosition()F

    move-result v19

    mul-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v7, v0

    .line 756
    .local v7, "endIndex":I
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 758
    .local v12, "path":Landroid/graphics/Path;
    move/from16 v0, v16

    if-eq v0, v7, :cond_4

    move/from16 v0, v16

    if-ge v0, v7, :cond_4

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-int v20, v7, v16

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v9, v19, v20

    .line 760
    .local v9, "horizontalInterval":F
    const/4 v8, 0x1

    .line 762
    .local v8, "firstValue":Z
    const/4 v13, 0x0

    .line 763
    .local v13, "previous":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    new-instance v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;FF)V

    .line 764
    .local v5, "current":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    const/4 v14, 0x0

    .line 765
    .local v14, "previousMiddle":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    new-instance v6, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;FF)V

    .line 768
    .local v6, "currentMiddle":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    move/from16 v10, v16

    .local v10, "index":I
    :goto_1
    if-ge v10, v7, :cond_3

    .line 770
    sub-int v15, v10, v16

    .line 771
    .local v15, "relativeIndex":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    mul-float v20, v20, v9

    add-float v17, v19, v20

    .line 773
    .local v17, "x":F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mValues:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->computeVerticalPosition(FFFF)F

    move-result v19

    sub-float v18, v20, v19

    .line 776
    .local v18, "y":F
    if-eqz v8, :cond_1

    .line 777
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 778
    new-instance v13, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;

    .end local v13    # "previous":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v13, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;FF)V

    .line 779
    .restart local v13    # "previous":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    const/4 v8, 0x0

    .line 768
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 784
    :cond_1
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->set(FF)V

    .line 787
    if-nez v14, :cond_2

    .line 788
    new-instance v14, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;

    .end local v14    # "previousMiddle":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v14, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;FF)V

    .line 789
    .restart local v14    # "previousMiddle":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    invoke-virtual {v14, v13, v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->setMiddle(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V

    .line 790
    iget v0, v14, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    move/from16 v19, v0

    iget v0, v14, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 791
    invoke-virtual {v13, v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->set(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V

    goto :goto_2

    .line 795
    :cond_2
    invoke-virtual {v6, v13, v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->setMiddle(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V

    .line 798
    iget v0, v13, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    move/from16 v19, v0

    iget v0, v13, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    move/from16 v20, v0

    iget v0, v6, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    move/from16 v21, v0

    iget v0, v6, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 800
    invoke-virtual {v14, v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->set(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V

    .line 801
    invoke-virtual {v13, v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->set(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;)V

    goto :goto_2

    .line 805
    .end local v15    # "relativeIndex":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_3
    iget v0, v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->x:F

    move/from16 v19, v0

    iget v0, v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;->y:F

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 808
    .end local v5    # "current":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    .end local v6    # "currentMiddle":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    .end local v8    # "firstValue":Z
    .end local v9    # "horizontalInterval":F
    .end local v10    # "index":I
    .end local v13    # "previous":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    .end local v14    # "previousMiddle":Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setContent(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;)V
    .locals 1
    .param p1, "content"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 732
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2002(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    .line 733
    return-void
.end method
