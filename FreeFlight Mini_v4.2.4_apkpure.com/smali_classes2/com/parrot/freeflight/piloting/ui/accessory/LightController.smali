.class public Lcom/parrot/freeflight/piloting/ui/accessory/LightController;
.super Ljava/lang/Object;
.source "LightController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;


# static fields
.field private static final FADE_IN_ANIMATION_DURATION_MS:I = 0x12c

.field private static final LIGHT_INTENSITY_DELAY:I = 0x64

.field private static final MAX_INTENSITY:I = 0xff


# instance fields
.field private final mBlinkBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePadMode:Z

.field private mLastCmdSentNanoTime:J

.field private final mLightCloseBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLightOpenBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOpened:Z

.field private final mOscillationBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRefreshed:Z

.field private final mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSetLightsIntensityRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rootView"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$7;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSetLightsIntensityRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 56
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mContext:Landroid/content/Context;

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mRefreshed:Z

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040080

    invoke-static {v1, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "lightControllerView":Landroid/view/View;
    const v1, 0x7f0f0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    .line 63
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0f0236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0f0238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f0f0239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    .line 93
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f0f023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setMaxProgress(I)V

    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setOnLedSeekBarChangeListener(Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mRefreshed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSetLightsIntensityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLastCmdSentNanoTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/LightController;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLastCmdSentNanoTime:J

    return-wide p1
.end method

.method private checkAnimationState(ILandroid/widget/ImageButton;)V
    .locals 3
    .param p1, "animation"    # I
    .param p2, "button"    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getDroneAnimationStates()Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/util/DroneAnimationState;->getAnimationState(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 175
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 179
    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 184
    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 276
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 277
    const v0, 0x7f0e00a9

    .line 278
    .local v0, "colorRes":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 280
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 281
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f0f02c8

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v4, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 284
    .end local v0    # "colorRes":I
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private startFadeInAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mContext:Landroid/content/Context;

    const v2, 0x7f050012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 209
    .local v0, "seekBarAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    return-void
.end method

.method private startScaleInAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mContext:Landroid/content/Context;

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 220
    .local v0, "scaleInAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$6;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController$6;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/LightController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    return-void
.end method

.method private startScaleOutAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mContext:Landroid/content/Context;

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 215
    .local v0, "openButtonsAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    return-void
.end method


# virtual methods
.method public applyTheme()V
    .locals 6

    .prologue
    .line 149
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 150
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const v4, 0x7f0e00a6

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getCustomColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 151
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 152
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 153
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setBarColor(I)V

    .line 154
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 156
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 157
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f0f02c7

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 159
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 241
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOpened:Z

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 246
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mRefreshed:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleOutAnimation(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleInAnimation(Landroid/view/View;)V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleInAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCommandChoice()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOpened:Z

    return v0
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOpened:Z

    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    .line 198
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mRefreshed:Z

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleOutAnimation(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleOutAnimation(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startScaleOutAnimation(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->startFadeInAnimation(Landroid/view/View;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->update()V

    .line 205
    return-void
.end method

.method public refreshVisibility()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mRefreshed:Z

    .line 143
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOpened:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->open()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->close()V

    goto :goto_0
.end method

.method public setGamePadMode(Z)V
    .locals 0
    .param p1, "isGamePadMode"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mGamePadMode:Z

    .line 265
    return-void
.end method

.method public shouldChangeVisibility(Landroid/view/View;Z)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visible"    # Z

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOpened:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getLightIntensity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setProgress(I)V

    .line 166
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->checkAnimationState(ILandroid/widget/ImageButton;)V

    .line 167
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/LightController;->checkAnimationState(ILandroid/widget/ImageButton;)V

    .line 169
    :cond_0
    return-void
.end method
