.class public Lcom/parrot/freeflight/settings/widget/WifiChannelsView;
.super Landroid/view/View;
.source "WifiChannelsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_PASS:I = 0x0

.field private static final CURRENT_CHANNEL_PASS:I = 0x3

.field private static final CURVES_PASS:I = 0x1

.field private static final LABEL_PASS:I = 0x2


# instance fields
.field private mBandSplitPosition:I

.field private mCaptionColor:I

.field private final mCaptionPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mChannelBlockWidth:I

.field private mChannelCount:I

.field private mChannelData:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mChannelsList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelsListMarginLeft:I

.field private mChannelsListMarginRight:I

.field private final mChannelsReverseMap:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentChannelBackground:I

.field private mCurrentChannelCaption:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentChannelColor:I

.field private mCurrentChannelTextColor:I

.field private mCurveAlphaInside:I

.field private mCurveAlphaInsidePressed:I

.field private mCurveColor1:I

.field private mCurveColor2:I

.field private mCurveColor3:I

.field private final mCurveFillPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurveMargin2G:I

.field private mCurveMargin5G:I

.field private final mCurvePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurveRssiMax:F

.field private mCurveSlopeFactor:F

.field private mCurveWidthRatio:F

.field private mCurveWidthRatio2G:F

.field private mCurveWidthRatio5G:F

.field private mFocusedColumn:I

.field private mHighestCountOnSameChannel:I

.field private mIdealViewWidth:I

.field private final mLineDashedPaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLinePaint:Landroid/graphics/Paint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mNetworkCountPerChannel:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPath:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPathTopMargin:I

.field private final mTextPaint:Landroid/text/TextPaint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTouchedColumn:I

.field private mTypeface:Landroid/graphics/Typeface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsReverseMap:Ljava/util/HashMap;

    .line 87
    iput v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    .line 88
    iput v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    .line 97
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPath:Landroid/graphics/Path;

    .line 108
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setClickable(Z)V

    .line 109
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setFocusable(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020267

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .local v2, "density":F
    invoke-static {}, Lcom/parrot/freeflight/settings/widget/WifiChannelUtils;->getChannelTable()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    .line 116
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->buildChannelsReverseMap()V

    .line 117
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBandSplitPosition()I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    .line 118
    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelBlockWidth:I

    .line 119
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    .line 121
    iput v9, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio2G:F

    .line 122
    iput v8, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio5G:F

    .line 123
    const/high16 v4, 0x3e800000    # 0.25f

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveSlopeFactor:F

    .line 124
    const v4, 0x3f333333    # 0.7f

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveRssiMax:F

    .line 125
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    .line 126
    const/16 v4, 0x19

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInside:I

    .line 127
    const/16 v4, 0x96

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInsidePressed:I

    .line 128
    const v4, -0x555556

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor1:I

    .line 129
    const v4, -0x444445

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor2:I

    .line 130
    const v4, -0x222223

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor3:I

    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e00db

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionColor:I

    .line 132
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e00dc

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelColor:I

    .line 133
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e00e0

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelBackground:I

    .line 134
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0066

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelTextColor:I

    .line 135
    const/4 v4, 0x2

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mHighestCountOnSameChannel:I

    .line 138
    iget v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelBlockWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio2G:F

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin2G:I

    .line 139
    iget v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelBlockWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio5G:F

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin5G:I

    .line 140
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->computeIdealViewWidth()V

    .line 142
    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v4, v2

    .line 143
    .local v3, "textSize":F
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    .line 144
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    .line 145
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 146
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 147
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 148
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 150
    mul-float v0, v9, v2

    .line 151
    .local v0, "curveThickness":F
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor1:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInside:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    new-instance v4, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveFillPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveFillPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveFillPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInside:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v1, "debugPaint":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    const v4, -0xffff01

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLineDashedPaint:Landroid/graphics/Paint;

    .line 172
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLineDashedPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLineDashedPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLineDashedPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 175
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLineDashedPaint:Landroid/graphics/Paint;

    const v5, 0x77ffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLinePaint:Landroid/graphics/Paint;

    .line 178
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLinePaint:Landroid/graphics/Paint;

    const v5, 0x33aaaaaa

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    .line 183
    return-void

    .line 174
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method private static ave(IIF)I
    .locals 1
    .param p0, "src"    # I
    .param p1, "dst"    # I
    .param p2, "p"    # F

    .prologue
    .line 711
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method private buildChannelsReverseMap()V
    .locals 4

    .prologue
    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsReverseMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private computeIdealViewWidth()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelBlockWidth:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    .line 504
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 506
    .local v0, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    if-eqz v0, :cond_3

    .line 507
    iget v1, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin2G:I

    :goto_0
    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginLeft:I

    .line 512
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 513
    .restart local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    if-eqz v0, :cond_5

    .line 514
    iget v1, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin2G:I

    :goto_2
    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginRight:I

    .line 520
    .end local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_0
    :goto_3
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginLeft:I

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    .line 523
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 524
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin2G:I

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin5G:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    .line 527
    :cond_1
    return-void

    .line 507
    .restart local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin5G:I

    goto :goto_0

    .line 509
    :cond_3
    iput v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginLeft:I

    goto :goto_1

    .line 514
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin5G:I

    goto :goto_2

    .line 516
    :cond_5
    iput v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginRight:I

    goto :goto_3
.end method

.method private countNetworksPerChannel()V
    .locals 9

    .prologue
    .line 219
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 220
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    if-nez v6, :cond_0

    .line 246
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 224
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;

    .line 225
    .local v4, "status":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    if-eqz v4, :cond_1

    .line 226
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsReverseMap:Ljava/util/HashMap;

    iget-object v7, v4, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 227
    .local v0, "channelPosition":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 228
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 229
    .local v3, "max":I
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    .end local v0    # "channelPosition":Ljava/lang/Integer;
    .end local v3    # "max":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 233
    .end local v4    # "status":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    :cond_2
    const/4 v1, 0x1

    .line 234
    .local v1, "globalMax":I
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 235
    iget-object v6, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 236
    .local v5, "value":I
    if-le v5, v1, :cond_3

    .line 237
    move v1, v5

    .line 234
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 242
    .end local v5    # "value":I
    :cond_4
    const/4 v6, 0x2

    if-ge v1, v6, :cond_5

    .line 243
    const/4 v1, 0x2

    .line 245
    :cond_5
    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mHighestCountOnSameChannel:I

    goto :goto_0
.end method

.method private drawBlock(Landroid/graphics/Canvas;IILcom/parrot/freeflight/settings/widget/WifiNetworkStatus;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "pass"    # I
    .param p4, "data"    # Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 374
    if-eqz p4, :cond_0

    .line 375
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    iget v9, v3, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    .line 376
    .local v9, "band":I
    if-nez v9, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio2G:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio:F

    .line 383
    .end local v9    # "band":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBlockLeft(I)I

    move-result v17

    .line 384
    .local v17, "currentBlockLeft":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBlockRight(I)I

    move-result v3

    sub-int v18, v3, v17

    .line 385
    .local v18, "currentBlockWidth":I
    div-int/lit8 v3, v18, 0x2

    add-int v16, v17, v3

    .line 386
    .local v16, "currentBlockCenter":I
    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v20, v3, 0x2

    .line 387
    .local v20, "curveHalfWidth":I
    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveSlopeFactor:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v28, v0

    .line 388
    .local v28, "topCtrlPtOffset":I
    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveSlopeFactor:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v11, v3

    .line 389
    .local v11, "bottomCtrlPtOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v10

    .line 390
    .local v10, "bottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mNetworkCountPerChannel:Landroid/util/SparseIntArray;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    .line 391
    .local v15, "countOnChannel":I
    int-to-float v3, v15

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mHighestCountOnSameChannel:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float v14, v3, v4

    .line 392
    .local v14, "colorRatio":F
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->valueToCurveColor(F)I

    move-result v19

    .line 393
    .local v19, "curveColor":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_7

    :cond_2
    const/16 v22, 0x1

    .line 395
    .local v22, "drawAsPressed":Z
    :goto_1
    if-nez p3, :cond_8

    .line 396
    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    if-eqz v22, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    add-int v5, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v6

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 404
    .local v24, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    const/4 v13, 0x0

    .line 405
    .local v13, "channelPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    if-eqz v3, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsReverseMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "channelPosition":Ljava/lang/Integer;
    check-cast v13, Ljava/lang/Integer;

    .line 408
    .restart local v13    # "channelPosition":Ljava/lang/Integer;
    :cond_4
    if-eqz v24, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, p2

    if-eq v3, v0, :cond_5

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v25, v16, v3

    .line 410
    .local v25, "textLeft":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 470
    .end local v13    # "channelPosition":Ljava/lang/Integer;
    .end local v24    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    .end local v25    # "textLeft":I
    :cond_5
    :goto_2
    return-void

    .line 379
    .end local v10    # "bottom":I
    .end local v11    # "bottomCtrlPtOffset":I
    .end local v14    # "colorRatio":F
    .end local v15    # "countOnChannel":I
    .end local v16    # "currentBlockCenter":I
    .end local v17    # "currentBlockLeft":I
    .end local v18    # "currentBlockWidth":I
    .end local v19    # "curveColor":I
    .end local v20    # "curveHalfWidth":I
    .end local v22    # "drawAsPressed":Z
    .end local v28    # "topCtrlPtOffset":I
    .restart local v9    # "band":I
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio5G:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveWidthRatio:F

    goto/16 :goto_0

    .line 393
    .end local v9    # "band":I
    .restart local v10    # "bottom":I
    .restart local v11    # "bottomCtrlPtOffset":I
    .restart local v14    # "colorRatio":F
    .restart local v15    # "countOnChannel":I
    .restart local v16    # "currentBlockCenter":I
    .restart local v17    # "currentBlockLeft":I
    .restart local v18    # "currentBlockWidth":I
    .restart local v19    # "curveColor":I
    .restart local v20    # "curveHalfWidth":I
    .restart local v28    # "topCtrlPtOffset":I
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 412
    .restart local v22    # "drawAsPressed":Z
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 415
    const/high16 v23, 0x3f800000    # 1.0f

    .line 416
    .local v23, "heightRatio":F
    if-eqz p4, :cond_9

    .line 417
    move-object/from16 v0, p4

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mRssi:F

    const/high16 v4, 0x42c80000    # 100.0f

    add-float/2addr v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveRssiMax:F

    div-float v23, v3, v4

    .line 420
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    sub-int v3, v10, v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    .line 421
    .local v21, "curveTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    move/from16 v0, v21

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveFillPaint:Landroid/graphics/Paint;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurvePaint:Landroid/graphics/Paint;

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInsidePressed:I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveFillPaint:Landroid/graphics/Paint;

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInsidePressed:I

    :goto_4
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 427
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 428
    .local v2, "path":Landroid/graphics/Path;
    sub-int v3, v16, v20

    int-to-float v3, v3

    int-to-float v4, v10

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 429
    sub-int v3, v16, v20

    add-int/2addr v3, v11

    int-to-float v3, v3

    int-to-float v4, v10

    sub-int v5, v16, v28

    int-to-float v5, v5

    move/from16 v0, v21

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move/from16 v0, v21

    int-to-float v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 432
    add-int v3, v16, v28

    int-to-float v3, v3

    move/from16 v0, v21

    int-to-float v4, v0

    add-int v5, v16, v20

    sub-int/2addr v5, v11

    int-to-float v5, v5

    int-to-float v6, v10

    add-int v7, v16, v20

    int-to-float v7, v7

    int-to-float v8, v10

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 424
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInside:I

    goto :goto_3

    .line 425
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveAlphaInside:I

    goto :goto_4

    .line 438
    .end local v21    # "curveTop":I
    .end local v23    # "heightRatio":F
    :cond_c
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_e

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->isChannelNumberShown(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 443
    .local v12, "channel":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget v3, v12, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-nez v3, :cond_d

    const v26, 0x7f08041f

    .line 444
    .local v26, "textRes":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 445
    .local v27, "textToDraw":Ljava/lang/String;
    div-int/lit8 v3, v18, 0x2

    sub-int v25, v16, v3

    .line 446
    .restart local v25    # "textLeft":I
    move/from16 v0, v25

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 443
    .end local v25    # "textLeft":I
    .end local v26    # "textRes":I
    .end local v27    # "textToDraw":Ljava/lang/String;
    :cond_d
    const v26, 0x7f080420

    goto :goto_5

    .line 448
    .end local v12    # "channel":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_e
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 449
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_5

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelCaption:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelCaption:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelCaption:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 454
    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    int-to-float v5, v3

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelTextColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelCaption:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v25, v16, v3

    .line 458
    .restart local v25    # "textLeft":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelCaption:Ljava/lang/String;

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 460
    .end local v25    # "textLeft":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelBackground:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    int-to-float v5, v3

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCaptionPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelTextColor:I

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 465
    .restart local v24    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v25, v16, v3

    .line 466
    .restart local v25    # "textLeft":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v25

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPathTopMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private filterChannels(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "allow5GHzBand"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    if-eqz p2, :cond_0

    .line 276
    .end local p1    # "channels":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    :goto_0
    return-object p1

    .line 270
    .restart local p1    # "channels":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 272
    .local v0, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget v3, v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 273
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_2
    move-object p1, v1

    .line 276
    goto :goto_0
.end method

.method private getBandSplitPosition()I
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 208
    .local v1, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget v2, v1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 212
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :goto_1
    return v0

    .line 206
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getBlockLeft(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 534
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelBlockWidth:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginLeft:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 536
    .local v0, "baseLeft":F
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    if-lt p1, v2, :cond_0

    .line 537
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin2G:I

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin5G:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getWidth()I

    move-result v1

    .line 542
    .local v1, "totalWidth":I
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    if-eq v1, v2, :cond_1

    .line 543
    int-to-float v2, v1

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 546
    :cond_1
    float-to-int v2, v0

    return v2
.end method

.method private getBlockRight(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 553
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelBlockWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsListMarginLeft:I

    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 555
    .local v0, "baseRight":F
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    if-lt p1, v2, :cond_0

    .line 556
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin2G:I

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveMargin5G:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getWidth()I

    move-result v1

    .line 561
    .local v1, "totalWidth":I
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    if-eq v1, v2, :cond_1

    .line 562
    int-to-float v2, v1

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 565
    :cond_1
    float-to-int v2, v0

    return v2
.end method

.method private getTouchedBlock(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 571
    .local v1, "x":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    if-ge v0, v2, :cond_1

    .line 572
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBlockLeft(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBlockRight(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 576
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 571
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isChannelNumberShown(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 473
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBandSplitPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processClick()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 302
    iget v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    if-ne v0, v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    if-eq v0, v2, :cond_2

    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    .line 306
    .local v1, "clickedPosition":I
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->performClick()Z

    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mListener:Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 309
    .local v6, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mListener:Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;

    iget v2, v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    iget v3, v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    iget-boolean v4, v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->indoorAllowed:Z

    iget-boolean v5, v6, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->outdoorAllowed:Z

    invoke-interface/range {v0 .. v5}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;->onChannelClick(IIIZZ)V

    goto :goto_0

    .line 305
    .end local v1    # "clickedPosition":I
    .end local v6    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    goto :goto_1
.end method

.method private valueToCurveColor(F)I
    .locals 9
    .param p1, "value"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 694
    cmpg-float v6, p1, v7

    if-gtz v6, :cond_0

    .line 695
    mul-float/2addr p1, v8

    .line 696
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor1:I

    .line 697
    .local v2, "c0":I
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor2:I

    .line 703
    .local v3, "c1":I
    :goto_0
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v6, v7, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->ave(IIF)I

    move-result v0

    .line 704
    .local v0, "a":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6, v7, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->ave(IIF)I

    move-result v5

    .line 705
    .local v5, "r":I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v6, v7, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->ave(IIF)I

    move-result v4

    .line 706
    .local v4, "g":I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v6, v7, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->ave(IIF)I

    move-result v1

    .line 707
    .local v1, "b":I
    invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6

    .line 699
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "c0":I
    .end local v3    # "c1":I
    .end local v4    # "g":I
    .end local v5    # "r":I
    :cond_0
    sub-float v6, p1, v7

    mul-float p1, v6, v8

    .line 700
    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor2:I

    .line 701
    .restart local v2    # "c0":I
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurveColor3:I

    .restart local v3    # "c1":I
    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 478
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 479
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getDrawableState()[I

    move-result-object v0

    .line 480
    .local v0, "state":[I
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 484
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 489
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 490
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 494
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 331
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 332
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 333
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mLineDashedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    if-ge v1, v3, :cond_1

    .line 337
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 338
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v6}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->drawBlock(Landroid/graphics/Canvas;IILcom/parrot/freeflight/settings/widget/WifiNetworkStatus;)V

    .line 336
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 343
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;

    .line 345
    .local v0, "data":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsReverseMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;->mChannelInfo:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 346
    .local v2, "position":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 347
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->drawBlock(Landroid/graphics/Canvas;IILcom/parrot/freeflight/settings/widget/WifiNetworkStatus;)V

    .line 343
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "data":Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;
    .end local v2    # "position":Ljava/lang/Integer;
    :cond_3
    const/4 v2, 0x0

    .line 354
    .restart local v2    # "position":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    if-eqz v3, :cond_4

    .line 355
    iget-object v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsReverseMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "position":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 357
    .restart local v2    # "position":Ljava/lang/Integer;
    :cond_4
    if-nez v2, :cond_5

    .line 358
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 360
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {p0, p1, v3, v4, v6}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->drawBlock(Landroid/graphics/Canvas;IILcom/parrot/freeflight/settings/widget/WifiNetworkStatus;)V

    .line 363
    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    if-ge v1, v3, :cond_6

    .line 364
    const/4 v3, 0x2

    invoke-direct {p0, p1, v1, v3, v6}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->drawBlock(Landroid/graphics/Canvas;IILcom/parrot/freeflight/settings/widget/WifiNetworkStatus;)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 367
    :cond_6
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 615
    if-eqz p1, :cond_0

    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    .line 620
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 621
    return-void

    .line 618
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 650
    packed-switch p1, :pswitch_data_0

    .line 671
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 652
    :pswitch_0
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    iget v2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    if-ge v1, v2, :cond_0

    .line 653
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    .line 654
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    goto :goto_0

    .line 659
    :pswitch_1
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    if-lez v1, :cond_0

    .line 660
    iget v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mFocusedColumn:I

    .line 661
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    goto :goto_0

    .line 666
    :pswitch_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setPressed(Z)V

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 676
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setPressed(Z)V

    .line 679
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->processClick()V

    .line 681
    :cond_0
    const/4 v0, 0x1

    .line 683
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 582
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 583
    .local v0, "hMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 584
    .local v2, "vMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 585
    .local v3, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 587
    .local v1, "height":I
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_1

    iget v4, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    if-le v3, v4, :cond_1

    .line 588
    :cond_0
    iget v3, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mIdealViewWidth:I

    .line 591
    :cond_1
    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    .line 592
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getSuggestedMinimumWidth()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 596
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 598
    :cond_4
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getSuggestedMinimumHeight()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 599
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 602
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setMeasuredDimension(II)V

    .line 604
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 608
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 609
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 625
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 645
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 628
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setPressed(Z)V

    .line 629
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getTouchedBlock(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    .line 630
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setPressed(Z)V

    .line 634
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 635
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->processClick()V

    .line 636
    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    goto :goto_0

    .line 639
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setPressed(Z)V

    .line 640
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 641
    iput v1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTouchedColumn:I

    goto :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setChannelDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 317
    iput-object p1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelDrawable:Landroid/graphics/drawable/Drawable;

    .line 318
    return-void
.end method

.method public setChannelsTable(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "allow5GHzBand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->filterChannels(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    .line 257
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->buildChannelsReverseMap()V

    .line 258
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->getBandSplitPosition()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mBandSplitPosition:I

    .line 259
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelCount:I

    .line 260
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->computeIdealViewWidth()V

    .line 261
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 262
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->requestLayout()V

    .line 263
    return-void
.end method

.method public setCurrentChannel(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "currentChannel"    # Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "caption"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    iput-object p1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannel:Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .line 285
    iput-object p2, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mCurrentChannelCaption:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 287
    return-void
.end method

.method public setOnChannelClickListener(Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    iput-object p1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mListener:Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;

    .line 250
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 324
    iput-object p1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTypeface:Landroid/graphics/Typeface;

    .line 325
    iget-object v0, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 326
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 327
    return-void
.end method

.method public setWifiData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/widget/WifiNetworkStatus;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->mChannelData:Ljava/util/List;

    .line 296
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->countNetworksPerChannel()V

    .line 297
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->invalidate()V

    .line 298
    return-void
.end method
