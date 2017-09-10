.class public Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;
.super Ljava/lang/Object;
.source "WingXController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;


# static fields
.field private static final LEVEL_OFFSET:I = 0x3


# instance fields
.field private final mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlyModeIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlyingMode:I

.field private final mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlaneGear:I

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSpeed:I

.field private final mStopBtn:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Landroid/view/ViewGroup;)V
    .locals 4
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
    const/4 v3, 0x3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    .line 42
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mPlaneGear:I

    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 47
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 49
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400b6

    invoke-static {v1, v2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "wingXControllerView":Landroid/view/View;
    const v1, 0x7f0f02c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    invoke-virtual {v1, v3}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->setBackgroundLevel(I)V

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->setOnSwipeListener(Lcom/parrot/freeflight/piloting/ui/accessory/Swiper$OnSwipeListener;)V

    .line 63
    const v1, 0x7f0f02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyModeIcon:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f0f02c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mStopBtn:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mStopBtn:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->initTheme(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mStopBtn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;

    .prologue
    .line 22
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->sendCommand(I)V

    return-void
.end method

.method private initTheme(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 187
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 188
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    .local v1, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 190
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 191
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v2, 0x7f0f02c7

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 192
    const v2, 0x7f0f02c8

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0e00a9

    invoke-static {p1, v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 195
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private sendCommand(I)V
    .locals 4
    .param p1, "newSpeedToSend"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXFlyingMode(I)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    .line 138
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-lez p1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXFlyingMode(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 143
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->requestWingXPlaneGear(I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateModeAndGear(II)V
    .locals 4
    .param p1, "flyingMode"    # I
    .param p2, "planeGear"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 154
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mPlaneGear:I

    if-eq p2, v0, :cond_2

    .line 155
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    .line 156
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mPlaneGear:I

    .line 157
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    if-nez v0, :cond_3

    .line 158
    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyModeIcon:Landroid/widget/ImageView;

    const v1, 0x7f020271

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mStopBtn:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->setBackgroundLevel(I)V

    .line 184
    :cond_2
    return-void

    .line 161
    :cond_3
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    if-eq v0, v1, :cond_1

    .line 162
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mPlaneGear:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_1
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    neg-int v0, v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mStopBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 164
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyModeIcon:Landroid/widget/ImageView;

    const v1, 0x7f020273

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 168
    :pswitch_1
    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyModeIcon:Landroid/widget/ImageView;

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 172
    :pswitch_2
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyModeIcon:Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public applyTheme()V
    .locals 5

    .prologue
    .line 121
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mGearBoxSwiper:Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/accessory/Swiper;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 123
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    .local v2, "thumbBackground":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 126
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v3

    invoke-static {v0, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 127
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0f02c7

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 129
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "thumbBackground":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public getCommandChoice()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mFlyingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public refreshVisibility()V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mStopBtn:Landroid/widget/Button;

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mSpeed:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGamePadMode(Z)V
    .locals 0
    .param p1, "isGamePadMode"    # Z

    .prologue
    .line 92
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
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXFlyingMode()I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXPlaneGear()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/accessory/WingXController;->updateModeAndGear(II)V

    .line 97
    return-void
.end method
