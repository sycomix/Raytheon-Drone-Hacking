.class public Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.super Landroid/view/View;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$CurvePoint;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;,
        Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;
    }
.end annotation


# static fields
.field private static final ALTITUDE_INTERVALS:[I

.field private static final DEFAULT_ALTITUDE_COLOR:I = -0xff0001
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_BATTERY_COLOR:I = -0x1000000
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_GRID_COLOR:I = -0x333334
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_GRID_HORIZONTAL_MARGIN:F = 25.0f

.field private static final DEFAULT_GRID_LEFT_PADDING:I = 0x5

.field private static final DEFAULT_GRID_LINE_WIDTH:F = 1.0f

.field private static final DEFAULT_GRID_VERTICAL_MARGIN:F = 25.0f

.field private static final DEFAULT_SPEED_COLOR:I = -0xff0100
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private static final DEFAULT_STROKE_WIDTH:F = 3.0f

.field private static final DEFAULT_TEXT_SIZE:F = 9.5f

.field private static final DEFAULT_TITLE_TEXT_SIZE:F = 16.0f

.field private static final MAX_SCALE_FACTOR:F = 5.0f

.field private static final MIN_SCALE_FACTOR:F = 1.0f

.field private static final SAVE_INSTANCE_STATE_PARENT_KEY:Ljava/lang/String; = "parent"

.field private static final SAVE_INSTANCE_STATE_RELATIVE_START_POSITION:Ljava/lang/String; = "startX"

.field private static final SAVE_INSTANCE_STATE_SCALE_FACTOR_KEY:Ljava/lang/String; = "scaleFactor"


# instance fields
.field private final mAltitudeCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAltitudeInterval:F

.field private final mAltitudePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAltitudeTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBatteryLevelAtStart:F

.field private final mBatteryPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBatteryTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGridHorizontalMargin:F

.field private mGridLeftPadding:F

.field private final mGridPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGridVerticalMargin:F

.field private mMaxAltitude:F

.field private mMaxSpeed:F

.field private final mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinAltitude:F

.field private mRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRunDetailDataList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation
.end field

.field private mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mScaleFactor:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSpeedInterval:F

.field private final mSpeedPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSpeedTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTextSize:F

.field private mTimeInterval:F

.field private final mTimePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitleTextSize:F

.field private mTotalRunTime:F

.field private final mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->ALTITUDE_INTERVALS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
        0x96
        0xc8
        0x190
        0x1f4
        0x3e8
        0x5dc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    .line 133
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetailDataList:Ljava/util/List;

    .line 135
    const/4 v8, 0x1

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridLeftPadding:F

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/parrot/freeflight/R$styleable;->RunDetailsGraphicsView:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, p2, v9, v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 140
    .local v4, "gridLineWidth":F
    const/4 v8, 0x2

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 141
    .local v7, "strokeWidth":F
    const/4 v8, 0x0

    const/high16 v9, 0x41180000    # 9.5f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTextSize:F

    .line 142
    const/4 v8, 0x1

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTitleTextSize:F

    .line 143
    const/4 v8, 0x5

    const/high16 v9, 0x41c80000    # 25.0f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridHorizontalMargin:F

    .line 144
    const/4 v8, 0x4

    const/high16 v9, 0x41c80000    # 25.0f

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridVerticalMargin:F

    .line 146
    const/4 v8, 0x6

    const v9, -0x333334

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 148
    .local v3, "gridColor":I
    const/4 v8, 0x7

    const v9, -0xff0100

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 150
    .local v6, "speedColor":I
    const/16 v8, 0x8

    const/high16 v9, -0x1000000

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 152
    .local v2, "batteryColor":I
    const/16 v8, 0x9

    const v9, -0xff0001

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 154
    .local v1, "altitudeColor":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 155
    .local v5, "resources":Landroid/content/res/Resources;
    new-instance v8, Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-direct {v8, v5}, Lcom/parrot/freeflight/util/ui/MetricsServant;-><init>(Landroid/content/res/Resources;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    .line 157
    const-string v8, "%s (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const v11, 0x7f080385

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v11}, Lcom/parrot/freeflight/util/ui/MetricsServant;->getSpeedUnit()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedTitle:Ljava/lang/String;

    .line 158
    const v8, 0x7f080358

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryTitle:Ljava/lang/String;

    .line 159
    const-string v8, "%s (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const v11, 0x7f080372

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v11}, Lcom/parrot/freeflight/util/ui/MetricsServant;->getDistanceUnit()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeTitle:Ljava/lang/String;

    .line 161
    new-instance v8, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridHorizontalMargin:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    invoke-direct {v8, p0, p1, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    .line 162
    new-instance v8, Landroid/view/ScaleGestureDetector;

    new-instance v9, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$ScaleListener;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;)V

    invoke-direct {v8, p1, v9}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 163
    new-instance v8, Landroid/view/GestureDetector;

    new-instance v9, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$GestureListener;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$1;)V

    invoke-direct {v8, p1, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 164
    new-instance v8, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    iget-object v9, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-direct {v8, p0, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    .line 167
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridPaint:Landroid/graphics/Paint;

    .line 168
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimePaint:Landroid/graphics/Paint;

    .line 169
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudePaint:Landroid/graphics/Paint;

    .line 171
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v8, v3, v4, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->initPaint(Landroid/graphics/Paint;IFLandroid/graphics/Paint$Style;)V

    .line 174
    iget-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimePaint:Landroid/graphics/Paint;

    const/high16 v9, -0x1000000

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->initPaint(Landroid/graphics/Paint;IFLandroid/graphics/Paint$Style;)V

    .line 175
    iget-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v8, v6, v7, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->initPaint(Landroid/graphics/Paint;IFLandroid/graphics/Paint$Style;)V

    .line 176
    iget-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v8, v1, v7, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->initPaint(Landroid/graphics/Paint;IFLandroid/graphics/Paint$Style;)V

    .line 177
    iget-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p0, v8, v2, v7, v9}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->initPaint(Landroid/graphics/Paint;IFLandroid/graphics/Paint$Style;)V

    .line 179
    new-instance v8, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    iget-object v9, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudePaint:Landroid/graphics/Paint;

    invoke-direct {v8, p0, v9, v10}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;Landroid/graphics/Paint;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    .line 180
    new-instance v8, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    iget-object v9, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedPaint:Landroid/graphics/Paint;

    invoke-direct {v8, p0, v9, v10}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;Landroid/graphics/Paint;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    .line 181
    new-instance v8, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    iget-object v9, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-direct {v8, p0, v9, v10}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;Landroid/graphics/Paint;)V

    iput-object v8, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    .line 182
    return-void
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    return v0
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    return v0
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeInterval:F

    return v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;)Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
    .param p1, "x1"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryLevelAtStart:F

    return v0
.end method

.method static synthetic access$2200(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridHorizontalMargin:F

    return v0
.end method

.method static synthetic access$2300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridVerticalMargin:F

    return v0
.end method

.method static synthetic access$2400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTextSize:F

    return v0
.end method

.method static synthetic access$2600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    return v0
.end method

.method static synthetic access$2800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Landroid/graphics/Paint;F)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
    .param p1, "x1"    # Landroid/graphics/Paint;
    .param p2, "x2"    # F

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getTextYPosition(Landroid/graphics/Paint;F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTitleTextSize:F

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$3000(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridLeftPadding:F

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTotalRunTime:F

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->computeTimeInterval()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private computeAltitudeInterval()V
    .locals 6

    .prologue
    .line 346
    iget v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    sub-float v0, v4, v5

    .line 348
    .local v0, "diffAltitude":F
    const/4 v2, 0x0

    .local v2, "i":I
    sget-object v4, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->ALTITUDE_INTERVALS:[I

    array-length v3, v4

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 349
    sget-object v4, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->ALTITUDE_INTERVALS:[I

    aget v1, v4, v2

    .line 350
    .local v1, "floor":I
    int-to-float v4, v1

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    .line 351
    int-to-float v4, v1

    iput v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeInterval:F

    .line 355
    .end local v1    # "floor":I
    :cond_0
    return-void

    .line 348
    .restart local v1    # "floor":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private computeSpeedInterval()V
    .locals 5

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 330
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 331
    iput v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    .line 343
    :goto_0
    return-void

    .line 332
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 333
    iput v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    goto :goto_0

    .line 334
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 335
    iput v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    goto :goto_0

    .line 336
    :cond_2
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 337
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    goto :goto_0

    .line 338
    :cond_3
    iget v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 339
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    goto :goto_0

    .line 341
    :cond_4
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedInterval:F

    goto :goto_0
.end method

.method private computeTimeInterval()V
    .locals 8

    .prologue
    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 358
    iget v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTotalRunTime:F

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v0, v4, v5

    .line 360
    .local v0, "totalTime":F
    const/high16 v4, 0x44960000    # 1200.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 361
    iget v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    iget v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    :goto_0
    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    .line 380
    :goto_1
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    .line 381
    return-void

    .line 361
    :cond_0
    const/high16 v1, 0x42f00000    # 120.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43700000    # 240.0f

    goto :goto_0

    .line 362
    :cond_2
    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 363
    iget v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    iget v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    :goto_2
    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto :goto_1

    :cond_4
    const/high16 v1, 0x42f00000    # 120.0f

    goto :goto_2

    .line 364
    :cond_5
    const/high16 v4, 0x43960000    # 300.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_8

    .line 365
    iget v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_7

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_6

    const/high16 v2, 0x41700000    # 15.0f

    :cond_6
    :goto_3
    iput v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_3

    .line 366
    :cond_8
    const/high16 v4, 0x42f00000    # 120.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_b

    .line 367
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_9

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_a

    move v2, v3

    :cond_9
    :goto_4
    iput v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto :goto_1

    :cond_a
    const/high16 v2, 0x41700000    # 15.0f

    goto :goto_4

    .line 368
    :cond_b
    cmpl-float v1, v0, v1

    if-lez v1, :cond_e

    .line 369
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_d

    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_c

    const/high16 v3, 0x40a00000    # 5.0f

    :cond_c
    :goto_5
    iput v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto :goto_1

    :cond_d
    const/high16 v3, 0x41700000    # 15.0f

    goto :goto_5

    .line 370
    :cond_e
    cmpl-float v1, v0, v2

    if-lez v1, :cond_10

    .line 371
    iget v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_f

    const/high16 v3, 0x40a00000    # 5.0f

    :cond_f
    iput v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto :goto_1

    .line 372
    :cond_10
    cmpl-float v1, v0, v3

    if-lez v1, :cond_11

    .line 373
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto/16 :goto_1

    .line 374
    :cond_11
    cmpl-float v1, v0, v6

    if-lez v1, :cond_12

    .line 375
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto/16 :goto_1

    .line 377
    :cond_12
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    goto/16 :goto_1
.end method

.method private getTextYPosition(Landroid/graphics/Paint;F)F
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "wantedPosition"    # F

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float v1, v2, v3

    .line 394
    .local v1, "textSize":F
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float v0, v2, v3

    .line 395
    .local v0, "textBaselineDiff":F
    sub-float v2, p2, v0

    return v2
.end method

.method private initPaint(Landroid/graphics/Paint;IFLandroid/graphics/Paint$Style;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I
    .param p3, "strokeWidth"    # F
    .param p4, "style"    # Landroid/graphics/Paint$Style;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 187
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 189
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 190
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    :cond_0
    return-void
.end method

.method private updateRunDetails()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 262
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 263
    .local v3, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    iput v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTotalRunTime:F

    .line 264
    iput v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTimeInterval:F

    .line 265
    iput v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    .line 266
    iput v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    .line 267
    iput v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryLevelAtStart:F

    .line 268
    iput v10, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    .line 269
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetailDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 270
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    invoke-virtual {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->clear()V

    .line 271
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    invoke-virtual {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->clear()V

    .line 272
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    invoke-virtual {v5}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;->clear()V

    .line 274
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    if-eqz v5, :cond_7

    .line 275
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mTotalRunTime:F

    .line 276
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v5

    invoke-static {v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    .line 277
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetailDataList:Ljava/util/List;

    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-virtual {v6}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetailDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 280
    .local v2, "data":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/util/ui/MetricsServant;->convertDistance(F)F

    move-result v0

    .line 281
    .local v0, "alt":F
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v1

    .line 282
    .local v1, "batteryLevel":I
    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMetricsServant:Lcom/parrot/freeflight/util/ui/MetricsServant;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeed()D

    move-result-wide v8

    double-to-float v7, v8

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/util/ui/MetricsServant;->convertSpeed(F)F

    move-result v4

    .line 284
    .local v4, "speed":F
    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    .line 285
    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    .line 290
    :cond_0
    :goto_1
    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    .line 291
    iput v4, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    .line 294
    :cond_1
    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryLevelAtStart:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_2

    if-lez v1, :cond_2

    .line 295
    int-to-float v6, v1

    iput v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryLevelAtStart:F

    .line 298
    :cond_2
    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mSpeedCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    invoke-virtual {v6, v4}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->addValue(F)V

    .line 299
    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mAltitudeCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    invoke-virtual {v6, v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->addValue(F)V

    .line 301
    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryLevelAtStart:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    .line 302
    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;->addValue(F)V

    goto :goto_0

    .line 286
    :cond_3
    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    .line 287
    iput v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    goto :goto_1

    .line 304
    :cond_4
    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mBatteryCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;->addValue(F)V

    goto :goto_0

    .line 309
    .end local v0    # "alt":F
    .end local v1    # "batteryLevel":I
    .end local v2    # "data":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .end local v4    # "speed":F
    :cond_5
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    iget v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v11

    if-gez v5, :cond_6

    .line 310
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMinAltitude:F

    add-float/2addr v5, v11

    iput v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxAltitude:F

    .line 314
    :cond_6
    iget v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    cmpg-float v5, v5, v11

    if-gez v5, :cond_7

    .line 315
    iput v11, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mMaxSpeed:F

    .line 319
    :cond_7
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->computeSpeedInterval()V

    .line 320
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->computeAltitudeInterval()V

    .line 321
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->computeTimeInterval()V

    .line 323
    new-instance v5, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    invoke-direct {v5, p0, v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    iput-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    .line 324
    iget-object v5, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    iget-object v6, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->setContent(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;)V

    .line 326
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->invalidate()V

    .line 327
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->computeScroll()V

    .line 240
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->draw(Landroid/graphics/Canvas;)V

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mLeftCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->getContentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMinLeftValue:F

    iget-object v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v3, v3, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMaxLeftValue:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddleCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMiddleCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->getContentBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget-object v0, v0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mRightCurve:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGrid:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Grid;->getContentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v2, v2, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMinRightValue:F

    iget-object v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mContent:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;

    iget v3, v3, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Content;->mMaxRightValue:F

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 207
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 208
    check-cast v0, Landroid/os/Bundle;

    .line 209
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    const-string v1, "scaleFactor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    .line 212
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->updateRealScreenWidth(I)V

    .line 213
    iget-object v1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    const-string v2, "startX"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->restoreState(F)V

    .line 214
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->invalidate()V

    .line 216
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "parent"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    const-string v1, "startX"

    iget-object v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->getRelativeStartPosition()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 201
    const-string v1, "scaleFactor"

    iget v2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleFactor:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 202
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mVirtualScreen:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGridHorizontalMargin:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;->updateRealScreenWidth(I)V

    .line 253
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public setRunAndRunDetails(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V
    .locals 0
    .param p1, "run"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "runDetails"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRun:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 257
    iput-object p2, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    .line 258
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->updateRunDetails()V

    .line 259
    return-void
.end method
