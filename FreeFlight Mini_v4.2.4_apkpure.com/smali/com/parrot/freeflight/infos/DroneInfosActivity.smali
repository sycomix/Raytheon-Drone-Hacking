.class public Lcom/parrot/freeflight/infos/DroneInfosActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "DroneInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;,
        Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;
    }
.end annotation


# static fields
.field private static final ORIENTATION:Ljava/lang/String; = "ScreenOrientation"

.field private static final TAG:Ljava/lang/String; = "DroneInfosActivity"


# instance fields
.field private mChargeRateTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mChargeTypeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mChargerPropertiesTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCheckForUpdatesButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDroneInfosTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDroneName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEndOrientation:I

.field private mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mStartOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    .line 87
    new-instance v0, Lcom/parrot/freeflight/infos/DroneInfosActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$1;-><init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 399
    new-instance v0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;-><init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateUiTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/infos/DroneInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/infos/DroneInfosActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/infos/DroneInfosActivity;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/infos/DroneInfosActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method private getFullChargeEstimatedTimeText(I)Ljava/lang/String;
    .locals 5
    .param p1, "fullChargingTime"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "builder":Ljava/lang/StringBuilder;
    const v1, 0x7f0800d8

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    if-nez p1, :cond_0

    .line 301
    const v1, 0x7f08058d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    const v1, 0x7f080637

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

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
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 288
    const v0, 0x7f08058d

    .line 291
    .local v0, "res":I
    :goto_0
    return v0

    .line 278
    .end local v0    # "res":I
    :pswitch_0
    const v0, 0x7f0800dc

    .line 279
    .restart local v0    # "res":I
    goto :goto_0

    .line 281
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0800db

    .line 282
    .restart local v0    # "res":I
    goto :goto_0

    .line 284
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0800da

    .line 285
    .restart local v0    # "res":I
    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateBatteryChargeState(Lcom/parrot/freeflight/core/model/BatteryChargeState;)V
    .locals 1
    .param p1, "batteryChargeState"    # Lcom/parrot/freeflight/core/model/BatteryChargeState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getPhase()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateBatteryPhaseInfo(I)V

    .line 238
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateBatteryRateInfo(I)V

    .line 239
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getFullChargingTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateBatteryFullChargingTimeInfo(I)V

    .line 240
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/BatteryChargeState;->getIntensity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateBatteryIntensityInfo(I)V

    .line 241
    return-void
.end method

.method private updateBatteryFullChargingTimeInfo(I)V
    .locals 2
    .param p1, "fullChargingTime"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getFullChargeEstimatedTimeText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    return-void
.end method

.method private updateBatteryIntensityInfo(I)V
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 264
    if-lez p1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getChargerPropertiesText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBatteryPhaseInfo(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeRateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeRateTextView:Landroid/widget/TextView;

    const v1, 0x7f0800d9

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    return-void
.end method

.method private updateBatteryRateInfo(I)V
    .locals 2
    .param p1, "rate"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getRateString(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :cond_0
    return-void
.end method

.method private updateUiTheme()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->convertDrawableToGreyScale(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mCheckForUpdatesButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 426
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getBatteryChargeState()Lcom/parrot/freeflight/core/model/BatteryChargeState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->updateBatteryChargeState(Lcom/parrot/freeflight/core/model/BatteryChargeState;)V

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method protected getChargerPropertiesText(I)Ljava/lang/String;
    .locals 6
    .param p1, "chargeIntensity"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 310
    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float v0, v2, v3

    .line 311
    .local v0, "chargeIntensityAmp":F
    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v1, v0, v2

    .line 313
    .local v1, "chargePower":F
    const v2, 0x7f0800d3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

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

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mEndOrientation:I

    iget v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneName:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneInfosTitle:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0f005d

    const/16 v11, 0x15

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 103
    const-string v6, "DroneInfosActivity"

    const-string v7, "onCreate "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    if-eqz p1, :cond_0

    const-string v6, "ScreenOrientation"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    .line 107
    :cond_0
    iget v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    if-ne v6, v8, :cond_1

    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mEndOrientation:I

    .line 109
    const v6, 0x7f040025

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->setContentView(I)V

    .line 110
    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 112
    .local v4, "titleTextView":Landroid/widget/TextView;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_2

    .line 114
    const-string v6, "DroneName"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "DroneNameText"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneName:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 117
    .local v5, "window":Landroid/view/Window;
    new-instance v1, Landroid/transition/Explode;

    invoke-direct {v1}, Landroid/transition/Explode;-><init>()V

    .line 118
    .local v1, "explodeTransition":Landroid/transition/Explode;
    const v6, 0x1020030

    invoke-virtual {v1, v6, v10}, Landroid/transition/Explode;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 119
    invoke-virtual {v5, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 120
    invoke-virtual {v5, v1}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    .line 121
    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/TransitionUtils;->makeSharedElementTextSizeTransition(Landroid/content/Context;I)Landroid/transition/Transition;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 122
    new-instance v6, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;

    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    .line 123
    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;-><init>(FF)V

    .line 122
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 126
    .end local v1    # "explodeTransition":Landroid/transition/Explode;
    .end local v5    # "window":Landroid/view/Window;
    :cond_2
    const v6, 0x7f0f00d4

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mRootLayout:Landroid/view/View;

    .line 127
    const v6, 0x7f0f0232

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    .line 128
    const v6, 0x7f0f022f

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    .line 129
    const v6, 0x7f0f0231

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    .line 130
    const v6, 0x7f0f00bd

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeRateTextView:Landroid/widget/TextView;

    .line 132
    const v6, 0x7f0f00bb

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 134
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v6, Lcom/parrot/freeflight/infos/DroneInfosActivity$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$2;-><init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v11, :cond_3

    .line 141
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_3
    const v6, 0x7f0f00d6

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mCheckForUpdatesButton:Landroid/widget/Button;

    .line 146
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mCheckForUpdatesButton:Landroid/widget/Button;

    new-instance v7, Lcom/parrot/freeflight/infos/DroneInfosActivity$3;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$3;-><init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v6

    check-cast v6, Lcom/parrot/freeflight/core/model/DelosModel;

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 153
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v6, :cond_4

    .line 154
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v7, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/core/model/DelosModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 155
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/model/DelosModel;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneInfosTitle:Ljava/lang/String;

    .line 157
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDroneInfosTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "mInfos":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/Pair;

    const v7, 0x7f080477

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v8, p0}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v6, Landroid/util/Pair;

    const v7, 0x7f08027f

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DelosModel;->getHardwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v6, Landroid/util/Pair;

    const v7, 0x7f08052e

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DelosModel;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v6, Landroid/util/Pair;

    const v7, 0x7f0804fe

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductSerial()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const v6, 0x7f0f00d1

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 167
    .local v3, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 168
    invoke-virtual {v3, v10}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 169
    new-instance v6, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;-><init>(Ljava/util/List;Lcom/parrot/freeflight/infos/DroneInfosActivity$1;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 172
    .end local v2    # "mInfos":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_4
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 173
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v7, Lcom/parrot/freeflight/infos/DroneInfosActivity$4;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$4;-><init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V

    invoke-virtual {v6, v7}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 180
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mFullChargeEstimatedTimeTextView:Landroid/widget/TextView;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 181
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeTypeTextView:Landroid/widget/TextView;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 182
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargerPropertiesTextView:Landroid/widget/TextView;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 183
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mChargeRateTextView:Landroid/widget/TextView;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 184
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 185
    iget-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mCheckForUpdatesButton:Landroid/widget/Button;

    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 187
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 189
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 218
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 386
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
    .line 391
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 366
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
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "consumed":Z
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 376
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
    .line 193
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v0, "ScreenOrientation"

    iget v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mStartOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 206
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 208
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

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
