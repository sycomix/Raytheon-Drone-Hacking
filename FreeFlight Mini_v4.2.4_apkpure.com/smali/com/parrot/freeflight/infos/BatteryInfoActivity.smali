.class public Lcom/parrot/freeflight/infos/BatteryInfoActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "BatteryInfoActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final ALPHA_MAX:F = 1.0f

.field private static final ALPHA_MIN:F = 0.2f

.field private static final ANIMATION_DURATION:I = 0x3e8

.field private static final GRAPHIC_BATTERY_CHARGE_NB_LEVEL:I = 0x3

.field public static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "product"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mBatteryLayout:Landroid/widget/LinearLayout;

.field private mBatteryTextView:Landroid/widget/TextView;

.field private final mChargeLevels:[Landroid/view/View;

.field private mChargeRateTextView:Landroid/widget/TextView;

.field private mChargeTypeTextView:Landroid/widget/TextView;

.field private mChargerPropertiesTextView:Landroid/widget/TextView;

.field private final mDelosBatteryModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

.field private mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLevelAlphaAnimation:Landroid/view/animation/Animation;

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/DelosModel;

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    .line 57
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    .line 171
    new-instance v0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity$3;-><init>(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mDelosBatteryModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 373
    new-instance v0, Lcom/parrot/freeflight/infos/BatteryInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity$4;-><init>(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/infos/BatteryInfoActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/infos/BatteryInfoActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/BatteryInfoActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_0
    return-void
.end method

.method private getFullChargeEstimatedTimeText(I)Ljava/lang/String;
    .locals 5
    .param p1, "fullChargingTime"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "builder":Ljava/lang/StringBuilder;
    const v1, 0x7f0800d8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    if-nez p1, :cond_0

    .line 296
    const v1, 0x7f08058d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 298
    :cond_0
    const v1, 0x7f080637

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getRateString(I)I
    .locals 1
    .param p1, "rate"    # I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 271
    packed-switch p1, :pswitch_data_0

    .line 283
    const v0, 0x7f08058d

    .line 286
    .local v0, "res":I
    :goto_0
    return v0

    .line 273
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0800dc

    .line 274
    .restart local v0    # "res":I
    goto :goto_0

    .line 276
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0800db

    .line 277
    .restart local v0    # "res":I
    goto :goto_0

    .line 279
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0800da

    .line 280
    .restart local v0    # "res":I
    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 313
    sget-object v1, Lcom/parrot/freeflight/infos/BatteryInfoActivity$5;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 323
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 319
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/infos/BatteryInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "product"

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateBatteryChargeState(Lcom/parrot/freeflight/core/model/BatteryChargeState;)V
    .locals 1
    .param p1, "batteryChargeState"    # Lcom/parrot/freeflight/core/model/BatteryChargeState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getPhase()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateBatteryPhaseInfo(I)V

    .line 191
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateBatteryRateInfo(I)V

    .line 192
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getFullChargingTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateBatteryFullChargingTimeInfo(I)V

    .line 193
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getIntensity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateBatteryIntensityInfo(I)V

    .line 194
    return-void
.end method

.method private updateBatteryFullChargingTimeInfo(I)V
    .locals 2
    .param p1, "fullChargingTime"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getFullChargeEstimatedTimeText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method private updateBatteryIntensityInfo(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 218
    if-lez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getChargerPropertiesText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBatteryPhaseInfo(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 197
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeRateTextView:Landroid/widget/TextView;

    const v1, 0x7f0800d9

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateBatteryView(I)V

    goto :goto_0
.end method

.method private updateBatteryRateInfo(I)V
    .locals 2
    .param p1, "rate"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getRateString(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    return-void
.end method

.method private updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V
    .locals 1
    .param p1, "connectionState"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-eq p1, v0, :cond_0

    .line 185
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 187
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateConnectionState(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getBatteryChargeState()Lcom/parrot/freeflight/core/model/BatteryChargeState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->updateBatteryChargeState(Lcom/parrot/freeflight/core/model/BatteryChargeState;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected getChargerPropertiesText(I)Ljava/lang/String;
    .locals 6
    .param p1, "chargeIntensity"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 305
    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float v0, v2, v3

    .line 306
    .local v0, "chargeIntensityAmp":F
    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v0, v2

    .line 308
    .local v1, "chargePower":F
    const v2, 0x7f0800d3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 82
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-eqz p1, :cond_0

    .line 83
    const-string v4, "product"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 85
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v4, "product"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    const-string v4, "product"

    sget-object v5, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v5}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 88
    :cond_1
    if-nez v1, :cond_2

    .line 89
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 91
    :cond_2
    iput-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 92
    const v4, 0x7f040020

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->setContentView(I)V

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 95
    .local v3, "window":Landroid/view/Window;
    new-instance v4, Landroid/transition/Explode;

    invoke-direct {v4}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 96
    new-instance v4, Landroid/transition/Explode;

    invoke-direct {v4}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 98
    .end local v3    # "window":Landroid/view/Window;
    :cond_3
    const v4, 0x7f0f00ba

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mRootView:Landroid/view/View;

    .line 99
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    const/4 v5, 0x0

    const v6, 0x7f0f00c0

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 100
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    const/4 v5, 0x1

    const v6, 0x7f0f00c1

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 101
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    const/4 v5, 0x2

    const v6, 0x7f0f00c2

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 103
    const v4, 0x7f0f0232

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    .line 104
    const v4, 0x7f0f022f

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    .line 105
    const v4, 0x7f0f0231

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    .line 106
    const v4, 0x7f0f00bd

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeRateTextView:Landroid/widget/TextView;

    .line 107
    const v4, 0x7f0f00be

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryTextView:Landroid/widget/TextView;

    .line 108
    const v4, 0x7f0f00bf

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryLayout:Landroid/widget/LinearLayout;

    .line 109
    const v4, 0x7f0f00bb

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 111
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/parrot/freeflight/infos/BatteryInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity$1;-><init>(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v4

    check-cast v4, Lcom/parrot/freeflight/core/model/DelosModel;

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 119
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v5, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mDelosBatteryModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/core/model/DelosModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 123
    :cond_4
    invoke-direct {p0, p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 124
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 125
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v5, Lcom/parrot/freeflight/infos/BatteryInfoActivity$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity$2;-><init>(Lcom/parrot/freeflight/infos/BatteryInfoActivity;)V

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 131
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 132
    const v4, 0x7f0f00bc

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    .local v2, "titleView":Landroid/widget/TextView;
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 135
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 136
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 137
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeRateTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 139
    iget-object v4, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mDelosBatteryModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 169
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 360
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 365
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onJoystickEvent(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 340
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 350
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "product"

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 159
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetUI()V
    .locals 3

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 264
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 266
    return-void
.end method

.method public updateBatteryView(I)V
    .locals 9
    .param p1, "level"    # I

    .prologue
    const v8, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mBatteryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 236
    if-nez p1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->resetUI()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeRateTextView:Landroid/widget/TextView;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 241
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v6

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeRateTextView:Landroid/widget/TextView;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    if-ne p1, v4, :cond_3

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v6

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 249
    :cond_3
    if-ne p1, v6, :cond_4

    .line 250
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v6

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 253
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v7

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 255
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mChargeLevels:[Landroid/view/View;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/parrot/freeflight/infos/BatteryInfoActivity;->mLevelAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
