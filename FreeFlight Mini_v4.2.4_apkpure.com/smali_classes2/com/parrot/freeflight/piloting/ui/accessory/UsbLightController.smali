.class public Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;
.super Ljava/lang/Object;
.source "UsbLightController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;


# static fields
.field private static final LIGHT_INTENSITY_DELAY:I = 0x64

.field private static final MAX_INTENSITY:I = 0x64


# instance fields
.field private final mBlinkBtn:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentIntensity:I

.field private mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentState:I

.field private mGamePadMode:Z

.field private mLastCmdSentNanoTime:J

.field private final mLightAccessories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/freeflight/core/model/LightAccessory;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSetLightsIntensityRunnable:Ljava/lang/Runnable;

.field private final mSettingsView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


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
    const/4 v1, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentIntensity:I

    .line 51
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentState:I

    .line 272
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$6;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSetLightsIntensityRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getLightAccessories()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightAccessories:Ljava/util/Map;

    .line 61
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 63
    const v1, 0x7f0f015b

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSettingsView:Landroid/view/View;

    .line 65
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040080

    invoke-static {v1, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "lightControllerView":Landroid/view/View;
    const v1, 0x7f0f0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0f0236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0f0238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    .line 82
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$3;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0f0239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    .line 97
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$4;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0f023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setMaxProgress(I)V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController$5;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setOnLedSeekBarChangeListener(Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar$OnLedSeekBarChangeListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/core/model/LightAccessory;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSetLightsIntensityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLastCmdSentNanoTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLastCmdSentNanoTime:J

    return-wide p1
.end method

.method private checkAnimationState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 207
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 207
    goto :goto_0

    :cond_1
    move v1, v2

    .line 208
    goto :goto_1
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 284
    const v0, 0x7f0e00a9

    .line 285
    .local v0, "colorRes":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 286
    .local v2, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 287
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 288
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f0f02c8

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1, v4, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 291
    .end local v0    # "colorRes":I
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    .line 218
    return-void
.end method

.method private show()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public applyTheme()V
    .locals 6

    .prologue
    .line 161
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 162
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const v4, 0x7f0e00a6

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getCustomColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 163
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 164
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 165
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setBarColor(I)V

    .line 166
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 167
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 168
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 169
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x7f0f02c7

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v5

    invoke-static {v4, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 171
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 250
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    .line 256
    return-void
.end method

.method public getCommandChoice()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    return v0
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->update()V

    .line 246
    return-void
.end method

.method public refreshVisibility()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->applyTheme()V

    .line 157
    :cond_0
    return-void
.end method

.method public setGamePadMode(Z)V
    .locals 0
    .param p1, "isGamePadMode"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mGamePadMode:Z

    .line 266
    return-void
.end method

.method public shouldChangeVisibility(Landroid/view/View;Z)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 136
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightOpenBtn:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightCloseBtn:Landroid/widget/ImageButton;

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mBlinkBtn:Landroid/widget/ImageButton;

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOscillationBtn:Landroid/widget/ImageButton;

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    if-ne p1, v2, :cond_0

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "lastFoundAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    const/4 v0, 0x0

    .line 177
    .local v0, "currentAccessoryFound":Z
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mLightAccessories:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/core/model/LightAccessory;

    .line 178
    .local v2, "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-ne v2, v4, :cond_4

    .line 179
    const/4 v0, 0x1

    .line 185
    .end local v2    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_0
    if-nez v0, :cond_1

    .line 186
    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    .line 187
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSettingsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->show()V

    .line 194
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mOpened:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    if-eqz v3, :cond_3

    .line 195
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentIntensity:I

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/LightAccessory;->getIntensity()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 196
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/LightAccessory;->getIntensity()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentIntensity:I

    .line 197
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mSeekBar:Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentIntensity:I

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/ui/accessory/SeekBar;->setProgress(I)V

    .line 199
    :cond_2
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentState:I

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/LightAccessory;->getState()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 200
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentLightAccessory:Lcom/parrot/freeflight/core/model/LightAccessory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/LightAccessory;->getState()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentState:I

    .line 201
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->mCurrentState:I

    invoke-direct {p0, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->checkAnimationState(I)V

    .line 204
    :cond_3
    return-void

    .line 182
    .restart local v2    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_4
    move-object v1, v2

    .line 184
    goto :goto_0

    .line 190
    .end local v2    # "lightAccessory":Lcom/parrot/freeflight/core/model/LightAccessory;
    :cond_5
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/accessory/UsbLightController;->hide()V

    goto :goto_1
.end method
