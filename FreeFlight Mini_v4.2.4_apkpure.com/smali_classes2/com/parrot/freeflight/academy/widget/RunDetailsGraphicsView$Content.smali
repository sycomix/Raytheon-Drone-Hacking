.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;
.super Ljava/lang/Object;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Content"
.end annotation


# static fields
.field public static final MAX_MIDDLE_CURVE_VALUE:I = 0x64

.field public static final MIN_MIDDLE_CURVE_VALUE:I


# instance fields
.field private final MIN_NUMBER_OF_ROW:I

.field private final SPEED_INTERVALS:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public mLeftCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mLeftInterval:F

.field public mLeftPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mLeftTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mMaxLeftValue:F

.field public mMaxRightValue:F

.field public mMiddleCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mMiddlePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mMiddleTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mMinLeftValue:F

.field public mMinRightValue:F

.field public mNumberOfRows:I

.field public mRightCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mRightInterval:F

.field public mRightPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public mRightTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 4
    .param p1    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 607
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/16 v0, 0x13

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->SPEED_INTERVALS:[F

    .line 576
    const/4 v0, 0x2

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->MIN_NUMBER_OF_ROW:I

    .line 599
    const/4 v0, 0x5

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    .line 608
    sget-object v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 630
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v0, v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->computeLeftValues(FFF)V

    .line 631
    invoke-direct {p0, v2, v2, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setPaints(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 632
    invoke-direct {p0, v2, v2, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, v2, v2, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setCurves(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;)V

    .line 636
    :goto_0
    return-void

    .line 610
    :pswitch_0
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->computeLeftValues(FFF)V

    .line 611
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setPaints(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 612
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1000(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1100(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    move-result-object v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setCurves(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;)V

    goto :goto_0

    .line 623
    :pswitch_1
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v1

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->computeLeftValues(FFF)V

    .line 624
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->SPEED_INTERVALS:[F

    invoke-direct {p0, v3, v0, v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->computeRightValues(FF[F)V

    .line 625
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setPaints(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 626
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1100(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1000(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    move-result-object v0

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    move-result-object v1

    invoke-static {p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$1200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->setCurves(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;)V

    goto :goto_0

    .line 574
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41c80000    # 25.0f
        0x41f00000    # 30.0f
    .end array-data

    .line 608
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private computeLeftValues(FFF)V
    .locals 3
    .param p1, "minValue"    # F
    .param p2, "maxValue"    # F
    .param p3, "interval"    # F

    .prologue
    const/4 v2, 0x2

    .line 639
    iput p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    .line 643
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMinLeftValue:F

    .line 644
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    div-float v0, p2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMaxLeftValue:F

    .line 648
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMaxLeftValue:F

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMinLeftValue:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    .line 651
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    if-ge v0, v2, :cond_0

    .line 652
    iput v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    .line 653
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    int-to-float v0, v0

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftInterval:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMaxLeftValue:F

    .line 655
    :cond_0
    return-void
.end method

.method private computeRightValues(FF[F)V
    .locals 5
    .param p1, "minValue"    # F
    .param p2, "maxValue"    # F
    .param p3, "possibleIntervals"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 658
    sub-float v0, p2, p1

    .line 662
    .local v0, "diff":F
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p3, v2

    .line 663
    .local v1, "interval":F
    iget v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    .line 664
    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightInterval:F

    .line 669
    .end local v1    # "interval":F
    :cond_0
    iget v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightInterval:F

    div-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightInterval:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMinRightValue:F

    .line 670
    iget v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMinRightValue:F

    iget v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mNumberOfRows:I

    int-to-float v3, v3

    iget v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightInterval:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMaxRightValue:F

    .line 671
    return-void

    .line 662
    .restart local v1    # "interval":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setCurves(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;)V
    .locals 0
    .param p1, "leftAxisCurve"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "middleAxisCurve"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rightAxisCurve"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 686
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    .line 687
    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddleCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    .line 688
    iput-object p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    .line 689
    return-void
.end method

.method private setPaints(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "leftAxisPaint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "middleAxisPaint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rightAxisPaint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 674
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftPaint:Landroid/graphics/Paint;

    .line 675
    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddlePaint:Landroid/graphics/Paint;

    .line 676
    iput-object p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightPaint:Landroid/graphics/Paint;

    .line 677
    return-void
.end method

.method private setTitles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "leftAxisTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "middleAxisTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rightAxisTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 680
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftTitle:Ljava/lang/String;

    .line 681
    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddleTitle:Ljava/lang/String;

    .line 682
    iput-object p3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightTitle:Ljava/lang/String;

    .line 683
    return-void
.end method
