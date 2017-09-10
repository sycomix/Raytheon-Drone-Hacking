.class public Lcom/parrot/freeflight/piloting/widget/Joystick;
.super Landroid/widget/FrameLayout;
.source "Joystick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/widget/Joystick$Type;,
        Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;,
        Lcom/parrot/freeflight/piloting/widget/Joystick$Direction;
    }
.end annotation


# static fields
.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x0

.field private static final JOYSTICK_PADDING:I = 0x5

.field private static final RADIUS:D = 3.2

.field public static final TYPE_ALL:I = 0x4

.field public static final TYPE_CIRCULAR:I = 0x3

.field public static final TYPE_HORIZONTAL:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_VERTICAL:I = 0x1


# instance fields
.field private final DEFAULT_NEUTRAL_RATIO:F

.field private final TAG:Ljava/lang/String;

.field private alpha:F

.field private backgroundImage:Landroid/widget/ImageView;

.field private backgroundImageResID:I

.field private bgRotateDegree:F

.field private fgRotateDegree:F

.field private foregroundImage:Landroid/widget/ImageView;

.field private foregroundImageGravity:I

.field private foregroundImageResID:I

.field private final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final initialCenter:Landroid/graphics/Point;

.field public joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

.field public joystickType:I

.field public neutralRatio:F

.field private resetGravityOnGoing:Z

.field public resetOnRelease:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "Joystick"

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->TAG:Ljava/lang/String;

    .line 71
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->DEFAULT_NEUTRAL_RATIO:F

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    .line 90
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->bgRotateDegree:F

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->fgRotateDegree:F

    .line 93
    const/16 v0, 0x11

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetGravityOnGoing:Z

    .line 282
    new-instance v0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/widget/Joystick$1;-><init>(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->initJoystick(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "Joystick"

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->TAG:Ljava/lang/String;

    .line 71
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->DEFAULT_NEUTRAL_RATIO:F

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    .line 90
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->bgRotateDegree:F

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->fgRotateDegree:F

    .line 93
    const/16 v0, 0x11

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetGravityOnGoing:Z

    .line 282
    new-instance v0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/widget/Joystick$1;-><init>(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->initJoystick(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-string v0, "Joystick"

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->TAG:Ljava/lang/String;

    .line 71
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->DEFAULT_NEUTRAL_RATIO:F

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    .line 90
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->bgRotateDegree:F

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->fgRotateDegree:F

    .line 93
    const/16 v0, 0x11

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetGravityOnGoing:Z

    .line 282
    new-instance v0, Lcom/parrot/freeflight/piloting/widget/Joystick$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/widget/Joystick$1;-><init>(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->initJoystick(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/widget/Joystick;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 24
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/widget/Joystick;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/Joystick;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/widget/Joystick;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetGravityOnGoing:Z

    return p1
.end method

.method private initJoystick(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 141
    .local v6, "mInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f04007b

    const/4 v9, 0x1

    invoke-virtual {v6, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    const v8, 0x7f0f021d

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/piloting/widget/Joystick;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    .line 143
    const v8, 0x7f0f021e

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/piloting/widget/Joystick;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    .line 144
    const/4 v8, 0x4

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    .line 145
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetOnRelease:Z

    .line 146
    const/4 v8, 0x0

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->alpha:F

    .line 147
    const v8, 0x3eaaaaab

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    .line 149
    if-eqz p2, :cond_8

    .line 150
    sget-object v8, Lcom/parrot/freeflight/R$styleable;->Joystick:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 151
    .local v2, "customAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    .line 152
    .local v7, "nbAttributes":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_7

    .line 153
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 154
    .local v0, "attr":I
    if-nez v0, :cond_1

    .line 155
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 156
    .local v1, "bgImageID":I
    if-eqz v1, :cond_0

    .line 157
    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImageResID:I

    .line 152
    .end local v1    # "bgImageID":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 159
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 160
    .local v4, "fgImageID":I
    if-eqz v4, :cond_0

    .line 161
    iput v4, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageResID:I

    goto :goto_1

    .line 162
    .end local v4    # "fgImageID":I
    :cond_2
    const/4 v8, 0x5

    if-ne v0, v8, :cond_3

    .line 163
    const/4 v8, 0x1

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetOnRelease:Z

    goto :goto_1

    .line 164
    :cond_3
    const/4 v8, 0x6

    if-ne v0, v8, :cond_4

    .line 165
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 166
    .local v3, "direction":I
    iput v3, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    goto :goto_1

    .line 167
    .end local v3    # "direction":I
    :cond_4
    const/4 v8, 0x2

    if-ne v0, v8, :cond_5

    .line 168
    const/16 v8, 0x11

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    .line 169
    const/16 v8, 0x11

    iget v9, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    if-eq v8, v9, :cond_0

    .line 170
    iget v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    invoke-static {v8}, Lcom/parrot/freeflight/util/ui/GravityManager;->convertCustomGravity(I)I

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    goto :goto_1

    .line 171
    :cond_5
    const/4 v8, 0x4

    if-ne v0, v8, :cond_6

    .line 172
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->fgRotateDegree:F

    goto :goto_1

    .line 173
    :cond_6
    const/4 v8, 0x3

    if-ne v0, v8, :cond_0

    .line 174
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->bgRotateDegree:F

    goto :goto_1

    .line 177
    .end local v0    # "attr":I
    :cond_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    .end local v2    # "customAttributes":Landroid/content/res/TypedArray;
    .end local v5    # "i":I
    .end local v7    # "nbAttributes":I
    :cond_8
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 180
    iget v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setForegroundImageGravity(I)V

    .line 181
    return-void
.end method

.method private joystickMoved(II)V
    .locals 10
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I

    .prologue
    .line 517
    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    if-eqz v7, :cond_7

    .line 519
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_8

    .line 520
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v7, v8

    .line 524
    .local v0, "maxX":F
    :goto_0
    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    mul-float v2, v0, v7

    .line 526
    .local v2, "minX":F
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_9

    .line 527
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v1, v7, v8

    .line 531
    .local v1, "maxY":F
    :goto_1
    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    mul-float v3, v1, v7

    .line 534
    .local v3, "minY":F
    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 535
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v6, v7, v2

    .line 536
    .local v6, "validDis":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_b

    .line 537
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-nez v7, :cond_a

    if-gez p1, :cond_a

    const/4 v4, 0x1

    .line 538
    .local v4, "negative":Z
    :goto_2
    sub-float v7, v0, v2

    div-float v5, v6, v7

    .line 539
    .local v5, "percent":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 540
    :cond_1
    if-eqz v4, :cond_2

    neg-float v5, v5

    .line 541
    :cond_2
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    const/4 v8, 0x1

    invoke-interface {v7, p0, v5, v8}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V

    .line 548
    .end local v4    # "negative":Z
    .end local v5    # "percent":F
    .end local v6    # "validDis":F
    :cond_3
    :goto_3
    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 549
    :cond_4
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v6, v7, v3

    .line 550
    .restart local v6    # "validDis":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_d

    .line 551
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_c

    if-lez p2, :cond_c

    const/4 v4, 0x1

    .line 552
    .restart local v4    # "negative":Z
    :goto_4
    sub-float v7, v1, v3

    div-float v5, v6, v7

    .line 553
    .restart local v5    # "percent":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v7

    if-lez v7, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 554
    :cond_5
    if-eqz v4, :cond_6

    neg-float v5, v5

    .line 555
    :cond_6
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    const/4 v8, 0x0

    invoke-interface {v7, p0, v5, v8}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V

    .line 562
    .end local v0    # "maxX":F
    .end local v1    # "maxY":F
    .end local v2    # "minX":F
    .end local v3    # "minY":F
    .end local v4    # "negative":Z
    .end local v5    # "percent":F
    .end local v6    # "validDis":F
    :cond_7
    :goto_5
    return-void

    .line 522
    :cond_8
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v0, v7

    .restart local v0    # "maxX":F
    goto/16 :goto_0

    .line 529
    .restart local v2    # "minX":F
    :cond_9
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v1, v7

    .restart local v1    # "maxY":F
    goto/16 :goto_1

    .line 537
    .restart local v3    # "minY":F
    .restart local v6    # "validDis":F
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 543
    :cond_b
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v7, p0, v8, v9}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V

    goto :goto_3

    .line 551
    :cond_c
    const/4 v4, 0x0

    goto :goto_4

    .line 557
    :cond_d
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, p0, v8, v9}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V

    goto :goto_5
.end method

.method private recenterJoystick()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0, v0, v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->updateThumb(IIZ)V

    .line 609
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->refreshAlpha()V

    .line 610
    return-void
.end method

.method private refreshAlpha()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->alpha:F

    .line 652
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->alpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 653
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->alpha:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 654
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->alpha:F

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->alpha:F

    goto :goto_0
.end method

.method private refreshJoystickView()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->fgRotateDegree:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 594
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageResID:I

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->bgRotateDegree:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 599
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImageResID:I

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImageResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->recenterJoystick()V

    .line 605
    return-void
.end method


# virtual methods
.method public getBackgroundImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBackgroundRotateDegree(F)V
    .locals 0
    .param p1, "degree"    # F

    .prologue
    .line 354
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->bgRotateDegree:F

    .line 355
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->refreshJoystickView()V

    .line 356
    return-void
.end method

.method public getForegroundImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getForegroundImageGravity()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    return v0
.end method

.method public getForegroundRotateDegree(F)V
    .locals 0
    .param p1, "degree"    # F

    .prologue
    .line 359
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->fgRotateDegree:F

    .line 360
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->refreshJoystickView()V

    .line 361
    return-void
.end method

.method public getJoystickListener()Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    return-object v0
.end method

.method public getNeutralRatio()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    return v0
.end method

.method public getThumbRelativePosition()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    .line 400
    .local v0, "retVal":Landroid/graphics/Point;
    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetOnRelease:Z

    if-nez v1, :cond_0

    .line 402
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "retVal":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 405
    .restart local v0    # "retVal":Landroid/graphics/Point;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onPressed(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)V

    .line 408
    :cond_1
    return-object v0
.end method

.method public isResetOnRelease()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetOnRelease:Z

    return v0
.end method

.method public joystickControllerDidTouchUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 568
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetOnRelease:Z

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->recenterJoystick()V

    .line 570
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v2, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V

    .line 572
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    invoke-interface {v0, p0, v2, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onValueChangedInDirection(Lcom/parrot/freeflight/piloting/widget/Joystick;FI)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    invoke-interface {v0, p0, v3}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onPressed(Lcom/parrot/freeflight/piloting/widget/Joystick;Z)V

    .line 580
    :cond_1
    return-void
.end method

.method public onDoubleTap()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->shouldImplementDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    invoke-interface {v0, p0}, Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;->onDoubleTap(Lcom/parrot/freeflight/piloting/widget/Joystick;)V

    .line 504
    :cond_0
    return-void
.end method

.method public resetThumbPosition()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->recenterJoystick()V

    .line 511
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 0
    .param p1, "backgroundImageID"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImageResID:I

    .line 264
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->refreshJoystickView()V

    .line 265
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 220
    :cond_1
    return-void
.end method

.method public setForegroundImage(I)V
    .locals 0
    .param p1, "foregroundImageID"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageResID:I

    .line 279
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->refreshJoystickView()V

    .line 280
    return-void
.end method

.method public setForegroundImageGravity(I)V
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 330
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    .line 332
    iget v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImageGravity:I

    and-int/lit8 v0, v0, 0x11

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    .line 333
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetGravityOnGoing:Z

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetGravityOnGoing:Z

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->requestLayout()V

    .line 347
    :goto_1
    return-void

    .line 337
    :cond_0
    const-string v0, "Joystick"

    const-string v1, "reset Foreground Image Gravity OnGoing ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 342
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_1
.end method

.method public setJoystickListener(Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickListener:Lcom/parrot/freeflight/piloting/widget/Joystick$Listener;

    .line 249
    return-void
.end method

.method public setJoystickType(I)V
    .locals 0
    .param p1, "newType"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    .line 375
    return-void
.end method

.method public setNeutralRatio(F)V
    .locals 3
    .param p1, "neutralRatio"    # F

    .prologue
    .line 233
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    .line 234
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 235
    .local v0, "screenLayout":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 236
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->neutralRatio:F

    .line 238
    :cond_1
    return-void
.end method

.method public setPercent(FF)V
    .locals 10
    .param p1, "xPercent"    # F
    .param p2, "yPercent"    # F

    .prologue
    const/4 v9, 0x4

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 613
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 616
    .local v1, "newCenter":Landroid/graphics/Point;
    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 617
    :cond_0
    const/4 v3, 0x0

    .line 618
    .local v3, "xVal":F
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 619
    .local v2, "width":F
    cmpl-float v5, v2, v7

    if-eqz v5, :cond_1

    .line 620
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    mul-float/2addr v5, p1

    div-float v3, v5, v8

    .line 622
    :cond_1
    float-to-int v5, v3

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 626
    .end local v2    # "width":F
    .end local v3    # "xVal":F
    :cond_2
    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    if-eq v5, v9, :cond_3

    iget v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 627
    :cond_3
    const/4 v4, 0x0

    .line 628
    .local v4, "yVal":F
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 629
    .local v0, "height":F
    cmpl-float v5, v0, v7

    if-eqz v5, :cond_4

    .line 630
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    mul-float/2addr v5, p2

    div-float v4, v5, v8

    .line 632
    :cond_4
    float-to-int v5, v4

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 636
    .end local v0    # "height":F
    .end local v4    # "yVal":F
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->invalidate()V

    .line 637
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/parrot/freeflight/piloting/widget/Joystick;->updateThumb(IIZ)V

    .line 638
    return-void
.end method

.method public setResetOnRelease(Z)V
    .locals 0
    .param p1, "resetOnrelease"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->resetOnRelease:Z

    .line 382
    return-void
.end method

.method public setVisibility(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 187
    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/widget/Joystick;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateThumb(II)V
    .locals 1
    .param p1, "relativeMoveX"    # I
    .param p2, "relativeMoveY"    # I

    .prologue
    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->updateThumb(IIZ)V

    .line 418
    return-void
.end method

.method public updateThumb(IIZ)V
    .locals 26
    .param p1, "relativeMoveX"    # I
    .param p2, "relativeMoveY"    # I
    .param p3, "needCallback"    # Z

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v10

    .line 422
    .local v10, "newLeftMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v11

    .line 425
    .local v11, "newTopMargin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    add-int v14, v17, p1

    .line 426
    .local v14, "targetThumbCenterX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    add-int v15, v17, p2

    .line 429
    .local v15, "targetThumbCenterY":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getWidth()I

    move-result v20

    sub-int v17, v17, v20

    div-int/lit8 v17, v17, 0x2

    add-int/lit8 v6, v17, -0x5

    .line 430
    .local v6, "leftMarginLimit":I
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/widget/Joystick;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getHeight()I

    move-result v20

    sub-int v17, v17, v20

    div-int/lit8 v17, v17, 0x2

    add-int/lit8 v16, v17, -0x5

    .line 431
    .local v16, "topMarginLimit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickType:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 492
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->foregroundImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 495
    if-eqz p3, :cond_1

    .line 496
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/parrot/freeflight/piloting/widget/Joystick;->joystickMoved(II)V

    .line 498
    :cond_1
    return-void

    .line 434
    :pswitch_0
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    int-to-double v0, v15

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v5, v0

    .line 435
    .local v5, "distance":F
    int-to-double v0, v15

    move-wide/from16 v20, v0

    int-to-double v0, v14

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v4, v0

    .line 438
    .local v4, "angle":F
    int-to-double v0, v6

    move-wide/from16 v20, v0

    float-to-double v0, v4

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v8, v0

    .line 439
    .local v8, "maxX":F
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    float-to-double v0, v4

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v9, v0

    .line 440
    .local v9, "maxY":F
    float-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    float-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 443
    .local v7, "maxDistance":F
    int-to-float v10, v14

    .line 444
    int-to-float v11, v15

    .line 445
    cmpl-float v17, v5, v7

    if-lez v17, :cond_0

    .line 446
    if-gez v14, :cond_2

    neg-float v8, v8

    .end local v8    # "maxX":F
    :cond_2
    float-to-int v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v10, v0

    .line 447
    if-gez v15, :cond_3

    neg-float v9, v9

    .end local v9    # "maxY":F
    :cond_3
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v11, v0

    goto/16 :goto_0

    .line 453
    .end local v4    # "angle":F
    .end local v5    # "distance":F
    .end local v7    # "maxDistance":F
    :pswitch_1
    int-to-float v11, v15

    .line 456
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 457
    if-gez v15, :cond_4

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v11, v0

    :goto_1
    goto/16 :goto_0

    :cond_4
    move/from16 v0, v16

    int-to-float v11, v0

    goto :goto_1

    .line 463
    :pswitch_2
    int-to-float v10, v14

    .line 466
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_0

    .line 467
    if-gez v14, :cond_5

    neg-int v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v10, v0

    :goto_2
    goto/16 :goto_0

    :cond_5
    int-to-float v10, v6

    goto :goto_2

    .line 473
    :pswitch_3
    int-to-float v10, v14

    .line 476
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_6

    .line 477
    if-gez v14, :cond_7

    neg-int v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v10, v0

    .line 480
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4046800000000000L    # 45.0

    div-double v2, v20, v22

    .line 481
    .local v2, "a":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->backgroundImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    div-double v18, v20, v22

    .line 482
    .local v18, "x":D
    neg-double v0, v2

    move-wide/from16 v20, v0

    const-wide v22, 0x400999999999999aL    # 3.2

    mul-double v22, v22, v2

    mul-double v24, v18, v18

    mul-double v22, v22, v24

    add-double v12, v20, v22

    .line 483
    .local v12, "offsetY":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/piloting/widget/Joystick;->initialCenter:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v20, v20, v12

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v11, v0

    .line 484
    goto/16 :goto_0

    .line 477
    .end local v2    # "a":D
    .end local v12    # "offsetY":D
    .end local v18    # "x":D
    :cond_7
    int-to-float v10, v6

    goto :goto_3

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
