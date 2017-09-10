.class public Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
.super Landroid/view/View;
.source "CurveGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;,
        Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;,
        Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureDirection;
    }
.end annotation


# static fields
.field private static final AXIS_LINE_WIDTH:I = 0x5

.field private static final BOTTOM_RIGHT:I = 0x2

.field private static final GRID_LINE_WIDTH:I = 0x1

.field private static final HORIZONTAL_NUM_ROW:I = 0x8

.field private static final MAX_EXPO_PRESET_NUMBER_OF_POINTS:F = 100.0f

.field private static final MAX_NUMBER_OF_POINTS:I = 0x5

.field private static final MAX_POINT_VALUE:I = 0x1

.field private static final MIN_POINT_VALUE:I = 0x0

.field private static final OTHER_DIRECTION:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_VALUE:F = 0.03f

.field private static final TOP_LEFT:I = 0x1

.field private static final VERTICAL_NUM_ROW:I = 0x8


# instance fields
.field private mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentGridSize:F

.field private mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGestureListener:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHeavyExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

.field private mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLightExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

.field private mLineColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mLinePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaximumExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

.field private final mMediumExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

.field private final mNoExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

.field private mNormalizedControllPoint:Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNormalizedPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->LINEAR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->createMultiPointFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNoExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 64
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_0:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->createMultiPointFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLightExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 65
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_1:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->createMultiPointFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mMediumExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 66
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_2:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->createMultiPointFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mHeavyExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 67
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->createMultiPointFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mMaximumExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 69
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 97
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->AXIS_FILTER_UNKNOWN:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 100
    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 106
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 122
    invoke-virtual {p0, v4, v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0025

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLineColor:I

    .line 134
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;

    invoke-direct {v0, p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;-><init>(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$1;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mGestureListener:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;

    .line 135
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mGestureListener:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mGestureListener:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$GestureListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getNewExpoTypeFromIncrement(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->addNewNormalizedPoint(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->triggerCurveChangeListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->arePresetsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getClosestPointIndex(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;IFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->changePointLocation(IFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->requestInvalidate()V

    return-void
.end method

.method private addNewNormalizedPoint(FF)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 439
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 441
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 442
    .local v8, "rightPointIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 444
    move v8, v7

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 451
    .local v5, "rightTopX":F
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 456
    .local v6, "rightTopY":F
    :goto_1
    add-int/lit8 v0, v8, -0x1

    if-ltz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    add-int/lit8 v1, v8, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 458
    .local v3, "leftBottomX":F
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    add-int/lit8 v1, v8, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    .local v4, "leftBottomY":F
    :goto_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 463
    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->canBeInZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 465
    const/4 v0, 0x1

    .line 468
    .end local v3    # "leftBottomX":F
    .end local v4    # "leftBottomY":F
    .end local v5    # "rightTopX":F
    .end local v6    # "rightTopY":F
    .end local v7    # "i":I
    .end local v8    # "rightPointIndex":I
    :goto_3
    return v0

    .line 442
    .restart local v7    # "i":I
    .restart local v8    # "rightPointIndex":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 453
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 454
    .restart local v5    # "rightTopX":F
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "rightTopY":F
    goto :goto_1

    .line 460
    :cond_3
    const/4 v3, 0x0

    .line 461
    .restart local v3    # "leftBottomX":F
    const/4 v4, 0x0

    .restart local v4    # "leftBottomY":F
    goto :goto_2

    .line 468
    .end local v3    # "leftBottomX":F
    .end local v4    # "leftBottomY":F
    .end local v5    # "rightTopX":F
    .end local v6    # "rightTopY":F
    .end local v7    # "i":I
    .end local v8    # "rightPointIndex":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private arePresetsEnabled()Z
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->UNKNOWN:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canBeInZone(FFFFFF)Z
    .locals 5
    .param p1, "checkX"    # F
    .param p2, "checkY"    # F
    .param p3, "leftBottomX"    # F
    .param p4, "leftBottomY"    # F
    .param p5, "rightTopX"    # F
    .param p6, "rightTopY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 472
    const v1, 0x3cf5c28f    # 0.03f

    .line 474
    .local v1, "threshold":F
    sub-float v4, p1, p3

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_3

    move v0, v2

    .line 475
    .local v0, "retVal":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 476
    sub-float v4, p2, p4

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_4

    move v0, v2

    .line 478
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 479
    sub-float v4, p5, p1

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_5

    move v0, v2

    .line 481
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 482
    sub-float v4, p6, p2

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_6

    move v0, v2

    .line 485
    :cond_2
    :goto_3
    return v0

    .end local v0    # "retVal":Z
    :cond_3
    move v0, v3

    .line 474
    goto :goto_0

    .restart local v0    # "retVal":Z
    :cond_4
    move v0, v3

    .line 476
    goto :goto_1

    :cond_5
    move v0, v3

    .line 479
    goto :goto_2

    :cond_6
    move v0, v3

    .line 482
    goto :goto_3
.end method

.method private changePointLocation(IFF)Z
    .locals 9
    .param p1, "pointIndex"    # I
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F

    .prologue
    .line 411
    const/4 v8, 0x0

    .line 412
    .local v8, "success":Z
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 414
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 416
    .local v5, "rightTopX":F
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 421
    .local v6, "rightTopY":F
    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 423
    .local v3, "leftBottomX":F
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 428
    .local v4, "leftBottomY":F
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 429
    .local v7, "checkPoint":Landroid/graphics/PointF;
    iget v0, v7, Landroid/graphics/PointF;->x:F

    add-float v1, v0, p2

    iget v0, v7, Landroid/graphics/PointF;->y:F

    add-float v2, v0, p3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->canBeInZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget v0, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p2

    iget v1, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p3

    invoke-virtual {v7, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 431
    const/4 v8, 0x1

    .line 435
    .end local v3    # "leftBottomX":F
    .end local v4    # "leftBottomY":F
    .end local v5    # "rightTopX":F
    .end local v6    # "rightTopY":F
    .end local v7    # "checkPoint":Landroid/graphics/PointF;
    :cond_0
    return v8

    .line 418
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 419
    .restart local v5    # "rightTopX":F
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "rightTopY":F
    goto :goto_0

    .line 425
    :cond_2
    const/4 v3, 0x0

    .line 426
    .restart local v3    # "leftBottomX":F
    const/4 v4, 0x0

    .restart local v4    # "leftBottomY":F
    goto :goto_1
.end method

.method private createMultiPointFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;
    .locals 13
    .param p1, "expoEnumType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    .line 348
    new-instance v5, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v5}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>()V

    .line 350
    .local v5, "multiPointFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;
    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getValue()I

    move-result v1

    .line 351
    .local v1, "expoEnumValue":I
    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->LINEAR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getValue()I

    move-result v7

    if-le v1, v7, :cond_0

    sget-object v7, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 352
    invoke-virtual {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getValue()I

    move-result v7

    if-gt v1, v7, :cond_0

    .line 354
    add-int/lit8 v0, v1, -0x1

    .line 356
    .local v0, "expCoeff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-float v7, v4

    cmpg-float v7, v7, v12

    if-gtz v7, :cond_0

    .line 357
    int-to-float v7, v4

    div-float v6, v7, v12

    .line 358
    .local v6, "val":F
    float-to-double v8, v6

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v7, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double v2, v8, v10

    .line 359
    .local v2, "expVal":D
    new-instance v7, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    double-to-float v8, v2

    invoke-direct {v7, v6, v8}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;-><init>(FF)V

    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "expCoeff":I
    .end local v2    # "expVal":D
    .end local v4    # "i":I
    .end local v6    # "val":F
    :cond_0
    return-object v5
.end method

.method private getAxisFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    .locals 3
    .param p1, "expoType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "axisFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    sget-object v1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 387
    :goto_0
    return-object v0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNoExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 371
    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLightExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 374
    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mMediumExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 377
    goto :goto_0

    .line 379
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mHeavyExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 380
    goto :goto_0

    .line 382
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mMaximumExpoAxisFilter:Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    .line 383
    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getClosestPointIndex(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 489
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 490
    .local v2, "normalizedPointsListLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 491
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 492
    .local v1, "normalizedPoint":Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 496
    .end local v0    # "i":I
    .end local v1    # "normalizedPoint":Landroid/graphics/PointF;
    :goto_1
    return v0

    .line 490
    .restart local v0    # "i":I
    .restart local v1    # "normalizedPoint":Landroid/graphics/PointF;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    .end local v1    # "normalizedPoint":Landroid/graphics/PointF;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNewExpoTypeFromIncrement(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .locals 5
    .param p1, "increment"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 512
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getValue()I

    move-result v0

    .line 513
    .local v0, "expoValue":I
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    .line 515
    .local v2, "shouldIncrement":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 516
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 515
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 513
    .end local v1    # "i":I
    .end local v2    # "shouldIncrement":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 516
    .restart local v1    # "i":I
    .restart local v2    # "shouldIncrement":Z
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 518
    :cond_2
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->LINEAR:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getValue()I

    move-result v3

    sget-object v4, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->EXPO_4:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 519
    invoke-virtual {v4}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getValue()I

    move-result v4

    .line 518
    invoke-static {v0, v3, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v0

    .line 520
    invoke-static {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    move-result-object v3

    return-object v3
.end method

.method private requestInvalidate()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->requestInvalidate(Z)V

    .line 508
    return-void
.end method

.method private requestInvalidate(Z)V
    .locals 1
    .param p1, "needImitate"    # Z

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->invalidate()V

    .line 501
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->invalidate()V

    .line 504
    :cond_0
    return-void
.end method

.method private setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;Z)Z
    .locals 3
    .param p1, "curveType"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "needImitate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    if-eq p1, v2, :cond_2

    const/4 v0, 0x1

    .line 220
    .local v0, "needRedraw":Z
    :goto_0
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->requestInvalidate(Z)V

    .line 225
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-direct {v2, p1, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;Z)Z

    .line 229
    :cond_1
    return v0

    .end local v0    # "needRedraw":Z
    :cond_2
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method private triggerCurveChangeListener()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-interface {v0, p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;->onCurveChange(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    .line 404
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 344
    return-void
.end method

.method public getAxisFilterSaveString()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, "retVal":Ljava/lang/String;
    sget-object v4, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 295
    sget-object v4, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupport Axis Filter EUNM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    sget-object v4, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAxisFilterSaveString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v3

    .line 279
    :pswitch_0
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->generateSaveString(FF)Ljava/lang/String;

    move-result-object v3

    .line 280
    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->generateSaveString([Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 285
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 286
    .local v2, "len":I
    mul-int/lit8 v4, v2, 0x2

    new-array v0, v4, [Landroid/graphics/PointF;

    .line 287
    .local v0, "allPoints":[Landroid/graphics/PointF;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 288
    add-int v5, v2, v1

    new-instance v6, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v0, v5

    .line 289
    sub-int v4, v2, v1

    add-int/lit8 v5, v4, -0x1

    new-instance v6, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    neg-float v7, v4

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    neg-float v4, v4

    invoke-direct {v6, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v0, v5

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_1
    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->generateSaveString([Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    .line 293
    goto/16 :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurveType()Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    return-object v0
.end method

.method public isImitateViewAttached()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getWidth()I

    move-result v10

    .line 158
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getHeight()I

    move-result v6

    .line 161
    .local v6, "height":I
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x8

    if-gt v7, v0, :cond_0

    .line 165
    const/4 v1, 0x0

    int-to-float v0, v7

    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    mul-float/2addr v2, v0

    int-to-float v3, v10

    int-to-float v0, v7

    iget v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x8

    if-gt v7, v0, :cond_1

    .line 168
    int-to-float v0, v7

    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    mul-float/2addr v1, v0

    const/4 v2, 0x0

    int-to-float v0, v7

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    mul-float/2addr v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v10

    int-to-float v4, v6

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    const/4 v8, 0x1

    .line 182
    .local v8, "needDrawPath":Z
    sget-object v0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurveType:Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    const/4 v8, 0x0

    .line 204
    :goto_2
    if-eqz v8, :cond_2

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 207
    :cond_2
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 186
    .local v9, "p":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    iget v2, v9, Landroid/graphics/PointF;->x:F

    int-to-float v3, v10

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    int-to-float v4, v6

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->arePresetsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    iget v1, v9, Landroid/graphics/PointF;->x:F

    int-to-float v2, v10

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    int-to-float v3, v6

    mul-float/2addr v2, v3

    const/high16 v3, 0x40e00000    # 7.0f

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 191
    .end local v9    # "p":Landroid/graphics/PointF;
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    int-to-float v1, v10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, v10

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    int-to-float v3, v6

    mul-float/2addr v2, v3

    int-to-float v3, v10

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    .line 141
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 142
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 144
    .local v0, "height":I
    div-int/lit8 v2, v1, 0x8

    div-int/lit8 v3, v0, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    .line 146
    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    mul-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentGridSize:F

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setMeasuredDimension(II)V

    .line 147
    return-void
.end method

.method public refreshCurveWithData(Ljava/lang/String;)Z
    .locals 13
    .param p1, "filterData"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 233
    const/4 v5, 0x0

    .line 235
    .local v5, "success":Z
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->getFilter(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v3

    .line 236
    .local v3, "newCurveType":Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
    sget-object v6, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$2;->$SwitchMap$com$parrot$freeflight$gamepad$configuration$JoystickSensibilityActivity$AxisFilter:[I

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    .line 264
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->requestInvalidate()V

    .line 271
    :cond_1
    :goto_1
    return v5

    .line 238
    :pswitch_0
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->isAMultiPointFilter(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    new-instance v2, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "multiPointFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 241
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "filterPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 243
    .local v4, "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_2

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v7

    cmpg-float v7, v7, v12

    if-gez v7, :cond_2

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_2

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v7

    cmpg-float v7, v7, v12

    if-gez v7, :cond_2

    .line 244
    iget-object v7, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v9

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 247
    .end local v4    # "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_3
    const/4 v5, 0x1

    .line 248
    goto :goto_0

    .line 253
    .end local v1    # "filterPoints":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;>;"
    .end local v2    # "multiPointFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;
    :pswitch_1
    invoke-static {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->isAnExpFilter(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;

    invoke-direct {v0, p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "exponentialFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->getCpX()F

    move-result v7

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;->getCpY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 257
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 268
    .end local v0    # "exponentialFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/ExponentialFilter;
    :cond_4
    sget-object v6, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown filter tag : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshCurveWithExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .locals 2
    .param p1, "expoType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 391
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    if-eq v1, p1, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getAxisFilterFromExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;

    move-result-object v0

    .line 393
    .local v0, "axisXFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    if-eqz v0, :cond_0

    .line 394
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mCurrentExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 395
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;->toSaveString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->refreshCurveWithData(Ljava/lang/String;)Z

    .line 398
    .end local v0    # "axisXFilter":Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
    :cond_0
    return-void
.end method

.method public setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;)Z
    .locals 1
    .param p1, "curveType"    # Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;Z)Z

    move-result v0

    return v0
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 150
    iput p1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mLineColor:I

    .line 151
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->invalidate()V

    .line 152
    return-void
.end method

.method public startImitate(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;)Z
    .locals 3
    .param p1, "otherCurveView"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    if-eq p1, p0, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-nez v2, :cond_0

    .line 305
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 306
    iput-object p0, p1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 309
    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    .line 310
    iget-object v2, p1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    .line 313
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->getCurveType()Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setCurveType(Lcom/parrot/freeflight/gamepad/configuration/JoystickSensibilityActivity$AxisFilter;Z)Z

    .line 315
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->requestInvalidate(Z)V

    .line 319
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public stopImitate()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 323
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iput-object v4, v3, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 325
    iput-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mImitateView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 327
    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 328
    .local v0, "newNormalizeP":Landroid/graphics/PointF;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v1, "newPoints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 330
    .local v2, "p":Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v2    # "p":Landroid/graphics/PointF;
    :cond_0
    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedPoints:Ljava/util/List;

    .line 334
    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->mNormalizedControllPoint:Landroid/graphics/PointF;

    .line 336
    .end local v0    # "newNormalizeP":Landroid/graphics/PointF;
    .end local v1    # "newPoints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    :cond_1
    return-void
.end method
