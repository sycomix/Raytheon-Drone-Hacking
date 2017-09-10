.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;
.super Ljava/lang/Object;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Grid"
.end annotation


# instance fields
.field public mBottomInterval:F

.field private mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContentBounds:Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mNumberOfColumns:I

.field private mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "virtualScreen"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    .line 840
    return-void
.end method

.method private computeBottomValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 974
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 975
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v2

    div-float v0, v1, v2

    .line 976
    .local v0, "numberOfColumnsToDisplay":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mNumberOfColumns:I

    .line 977
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mNumberOfColumns:I

    if-ge v1, v4, :cond_0

    .line 978
    iput v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mNumberOfColumns:I

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->getVirtualWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mBottomInterval:F

    .line 982
    .end local v0    # "numberOfColumnsToDisplay":F
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v21

    .line 853
    .local v21, "titleTypeface":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils$TYPEFACE;->getFontVariant(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v23

    .line 854
    .local v23, "unitTypeface":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    if-nez v2, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v7}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v8}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v8}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v2, v3, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    .line 860
    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    mul-float v18, v2, v3

    .line 861
    .local v18, "textHorizontalMargin":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v3, v3, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    div-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v25, v0

    .line 862
    .local v25, "verticalInterval":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 863
    .local v22, "topTitlesYPosition":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float v13, v2, v3

    .line 866
    .local v13, "bottomLegendYPosition":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    add-int/lit8 v2, v2, 0x1

    if-ge v14, v2, :cond_2

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v14

    mul-float v3, v3, v25

    add-float v4, v2, v3

    .line 868
    .local v4, "lineYPosition":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 866
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 872
    .end local v4    # "lineYPosition":F
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->computeBottomValues()V

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 881
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mNumberOfColumns:I

    if-ge v14, v2, :cond_4

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-virtual {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->getFirstXDisplayed()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mBottomInterval:F

    mul-float/2addr v3, v5

    add-float v6, v2, v3

    .line 886
    .local v6, "xPosition":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v6, v2

    if-gez v2, :cond_3

    .line 881
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 889
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_5

    .line 912
    .end local v6    # "xPosition":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v12

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftTitle:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v7, v7, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    invoke-static {v5, v7, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v7, v7, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 927
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    add-int/lit8 v2, v2, 0x1

    if-ge v14, v2, :cond_8

    .line 928
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v3, v3, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    mul-float v24, v2, v3

    .line 929
    .local v24, "value":F
    move/from16 v0, v24

    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v2, v24

    if-nez v2, :cond_7

    move/from16 v0, v24

    float-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 930
    .local v17, "text":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$3000(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v5, v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    int-to-float v8, v14

    mul-float v8, v8, v25

    sub-float/2addr v7, v8

    invoke-static {v3, v5, v7}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v5, v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 927
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 893
    .end local v17    # "text":Ljava/lang/String;
    .end local v24    # "value":F
    .restart local v6    # "xPosition":F
    :cond_5
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    mul-float v19, v2, v3

    .line 896
    .local v19, "time":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v5, p1

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 898
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v20, v19, v2

    .line 899
    .local v20, "timeInSec":F
    move/from16 v0, v20

    float-to-int v2, v0

    div-int/lit8 v15, v2, 0x3c

    .line 900
    .local v15, "min":I
    move/from16 v0, v20

    float-to-int v2, v0

    rem-int/lit8 v16, v2, 0x3c

    .line 902
    .local v16, "sec":I
    if-lez v15, :cond_6

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080369

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 909
    .restart local v17    # "text":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 905
    .end local v17    # "text":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08036a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "text":Ljava/lang/String;
    goto :goto_6

    .line 929
    .end local v6    # "xPosition":F
    .end local v15    # "min":I
    .end local v16    # "sec":I
    .end local v17    # "text":Ljava/lang/String;
    .end local v19    # "time":F
    .end local v20    # "timeInSec":F
    .restart local v24    # "value":F
    :cond_7
    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    .line 933
    .end local v24    # "value":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 937
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddleTitle:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddleTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v7, v7, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    invoke-static {v5, v7, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v7, v7, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 950
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v7, v7, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move/from16 v0, v22

    invoke-static {v5, v7, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v7, v7, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 963
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    add-int/lit8 v2, v2, 0x1

    if-ge v14, v2, :cond_c

    .line 964
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v3, v3, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightInterval:F

    mul-float v24, v2, v3

    .line 965
    .restart local v24    # "value":F
    move/from16 v0, v24

    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v2, v24

    if-nez v2, :cond_b

    move/from16 v0, v24

    float-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 966
    .restart local v17    # "text":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v3

    add-float/2addr v2, v3

    sub-float v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v5, v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    int-to-float v8, v14

    mul-float v8, v8, v25

    sub-float/2addr v7, v8

    invoke-static {v3, v5, v7}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v5, v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 963
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 965
    .end local v17    # "text":Ljava/lang/String;
    :cond_b
    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    .line 969
    .end local v24    # "value":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_0
.end method

.method public getContentBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContentBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setContent(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;)V
    .locals 0
    .param p1, "content"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 843
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    .line 844
    return-void
.end method
