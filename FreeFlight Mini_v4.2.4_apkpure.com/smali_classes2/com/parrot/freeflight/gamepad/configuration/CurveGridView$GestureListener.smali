.class Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CurveGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# static fields
.field private static final INCREMENT_THRESHOLD:F = 0.1f


# instance fields
.field private mClosestPointIndex:I

.field private mCurveChanged:Z

.field private mDownTouchPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V
    .locals 1

    .prologue
    .line 527
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    .line 533
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .param p2, "x1"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;-><init>(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    return v0
.end method

.method private getDirection(FFFF)I
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 642
    cmpg-float v0, p3, p1

    if-gez v0, :cond_0

    cmpl-float v0, p4, p2

    if-lez v0, :cond_0

    .line 643
    const/4 v0, 0x1

    .line 647
    :goto_0
    return v0

    .line 644
    :cond_0
    cmpl-float v0, p3, p1

    if-lez v0, :cond_1

    cmpg-float v0, p4, p2

    if-gez v0, :cond_1

    .line 645
    const/4 v0, 0x2

    goto :goto_0

    .line 647
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDistance(FFFF)D
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 637
    sub-float v0, p3, p1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getIncrement(DI)I
    .locals 5
    .param p1, "distance"    # D
    .param p3, "direction"    # I

    .prologue
    .line 626
    const-wide/16 v0, 0x0

    .line 628
    .local v0, "increment":D
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    if-eqz p3, :cond_0

    .line 629
    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    div-double v0, p1, v2

    .line 630
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    neg-double v0, v0

    .line 632
    :cond_0
    double-to-int v2, v0

    return v2
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 539
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;FF)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    .line 545
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 543
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mDownTouchPoint:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    if-ltz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1400(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$900(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    .line 618
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 550
    sget-object v12, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v13}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 585
    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    .line 552
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    move/from16 v0, p3

    neg-float v14, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 553
    invoke-virtual {v15}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v15}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v15, p4, v15

    invoke-static {v12, v13, v14, v15}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$800(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;IFF)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 554
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$900(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 569
    :cond_1
    :goto_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    goto :goto_0

    .line 555
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 557
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mDownTouchPoint:Landroid/graphics/PointF;

    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 558
    .local v8, "x1":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mDownTouchPoint:Landroid/graphics/PointF;

    iget v10, v12, Landroid/graphics/PointF;->y:F

    .line 559
    .local v10, "y1":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v13}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 560
    .local v9, "x2":F
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v14}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v11, v12, v13

    .line 561
    .local v11, "y2":F
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v9, v11}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->getDistance(FFFF)D

    move-result-wide v4

    .line 562
    .local v4, "distance":D
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v9, v11}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->getDirection(FFFF)I

    move-result v2

    .line 563
    .local v2, "direction":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->getIncrement(DI)I

    move-result v13

    invoke-static {v12, v13}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1000(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    move-result-object v3

    .line 564
    .local v3, "newExpoType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1100(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    move-result-object v12

    if-eq v12, v3, :cond_1

    .line 565
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mDownTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v12, v9, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 566
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v12, v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->refreshCurveWithExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    goto :goto_1

    .line 573
    .end local v2    # "direction":I
    .end local v3    # "newExpoType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .end local v4    # "distance":D
    .end local v8    # "x1":F
    .end local v9    # "x2":F
    .end local v10    # "y1":F
    .end local v11    # "y2":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v13}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v13, p3, v13

    sub-float v6, v12, v13

    .line 574
    .local v6, "nextCPx":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v13}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v13, p4, v13

    add-float v7, v12, v13

    .line 575
    .local v7, "nextCPy":F
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v6, v12, v13}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v6

    .line 576
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v7, v12, v13}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v7

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 579
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/graphics/PointF;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v12}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$900(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 581
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    goto/16 :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_MULTI_POINT:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$1300(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$900(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mCurveChanged:Z

    .line 597
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->this$0:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;->mClosestPointIndex:I

    .line 605
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
