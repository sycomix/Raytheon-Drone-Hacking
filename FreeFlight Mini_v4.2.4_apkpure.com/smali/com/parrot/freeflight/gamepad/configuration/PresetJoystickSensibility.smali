.class public Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "PresetJoystickSensibility.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;


# static fields
.field public static final AXIS_LEFT_LR_ID:I = 0x0

.field public static final AXIS_LEFT_UD_ID:I = 0x1

.field public static final AXIS_RIGHT_LR_ID:I = 0x2

.field public static final AXIS_RIGHT_UD_ID:I = 0x3

.field public static final PRODUCT_EXTRA:Ljava/lang/String; = "PRODUCT_EXTRA"

.field private static final TAG:Ljava/lang/String; = "PresetJoystickSensibility"


# instance fields
.field private mAxisExpoOwner:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private mJsType:I

.field private mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

.field private mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mXExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mYExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsType:I

    .line 64
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 81
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$2;-><init>(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->doPreferencesSupportPreset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->updateAxisExpo()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setLineColor(I)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->setLineColor(I)V

    .line 223
    :cond_2
    return-void
.end method

.method private doPreferencesSupportPreset()Z
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    check-cast v1, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePad$RemotePreferencesOwner;->getPreferences(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences;

    move-result-object v0

    .line 184
    .local v0, "gamePadPreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    instance-of v1, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

    .end local v0    # "gamePadPreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mAxisExpoOwner:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

    .line 186
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->updateAxisExpo()V

    .line 187
    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    .restart local v0    # "gamePadPreferences":Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getJoystickName(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    const-string v2, "JOYSTICK_NAME_EXTRA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 206
    const v2, 0x7f0f01df

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    .local v0, "joystickNameTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v0    # "joystickNameTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private getJoystickType(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    const-string v1, "JOYSTICK_TYPE_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, "jsType":I
    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsType:I

    .line 200
    return-void
.end method

.method private getProduct(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    const-string v1, "PRODUCT_EXTRA"

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "productValue":I
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 195
    return-void
.end method

.method private refreshCurveGridViews()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mXExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mXExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->refreshCurveWithExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mYExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mYExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->refreshCurveWithExpoType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    .line 168
    :cond_1
    return-void
.end method

.method private updateAxisExpo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mAxisExpoOwner:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;->getAxisExpo()Landroid/util/SparseArray;

    move-result-object v0

    .line 172
    .local v0, "axisExpos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;>;"
    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsType:I

    if-ne v1, v2, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mXExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 174
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mYExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->refreshCurveGridViews()V

    .line 180
    return-void

    .line 176
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mXExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    .line 177
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mYExpoType:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 157
    :cond_0
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v1, 0x7f04005e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->setContentView(I)V

    .line 98
    const v1, 0x7f0f01de

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mRootView:Landroid/view/View;

    .line 100
    const v1, 0x7f0f00bb

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 101
    .local v0, "backButton":Landroid/widget/ImageButton;
    if-eqz v0, :cond_1

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_0
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$3;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$3;-><init>(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_1
    const v1, 0x7f0f01d5

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->addListener(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;)V

    .line 118
    :cond_2
    const v1, 0x7f0f01dd

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsYCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    invoke-virtual {v1, p0}, Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;->addListener(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView$OnCurveChangeListener;)V

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->getProduct(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->getJoystickType(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->getJoystickName(Landroid/content/Intent;)V

    .line 127
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v2, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility$4;-><init>(Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 135
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mRootView:Landroid/view/View;

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public onCurveChange(Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V
    .locals 3
    .param p1, "curveGridView"    # Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expoType"    # Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 228
    iget v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsType:I

    if-ne v1, v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    .line 233
    .local v0, "axis":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mAxisExpoOwner:Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadRemotePreferences$AxisExpoOwner;->updateAxisExpo(Ljava/lang/Integer;Lcom/parrot/arsdk/arcommands/ARCOMMANDS_MAPPER_EXPO_TYPE_ENUM;)V

    .line 234
    return-void

    .line 231
    .end local v0    # "axis":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mJsXCurveView:Lcom/parrot/freeflight/gamepad/configuration/CurveGridView;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x2

    .restart local v0    # "axis":I
    :goto_1
    goto :goto_0

    .end local v0    # "axis":I
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 144
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/PresetJoystickSensibility;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 149
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 150
    return-void
.end method
