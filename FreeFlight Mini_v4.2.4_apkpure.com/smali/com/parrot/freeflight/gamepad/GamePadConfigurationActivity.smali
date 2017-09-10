.class public Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final DROPDOWN_IMAGE_CLOSED_ANGLE:F = 0.0f

.field private static final DROPDOWN_IMAGE_OPENED_ANGLE:F = 180.0f

.field private static final TAG:Ljava/lang/String; = "GamePadConfActivity"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private final mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionTypeImageView:Landroid/widget/ImageView;

.field private mDiscoveredGamePads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end field

.field private mDropDownButton:Landroid/widget/ImageButton;

.field private mForgetTextView:Landroid/widget/TextView;

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

.field private final mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

.field private mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

.field private mHelpView:Landroid/view/View;

.field private final mOnDeviceClickListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

.field private mOpened:Z

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReconnect:Z

.field private mResetButton:Landroid/widget/Button;

.field private mRootLayout:Landroid/view/View;

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mStatusBarLayout:Landroid/view/View;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOpened:Z

    .line 68
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mReconnect:Z

    .line 70
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    .line 86
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$2;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOnDeviceClickListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    .line 368
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$9;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$9;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 393
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$10;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$10;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    .line 439
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$11;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDiscoveredGamePads:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateResetButtonVisibility()V

    return-void
.end method

.method static synthetic access$1500(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$1600(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->setGamePad()V

    return-void
.end method

.method static synthetic access$1800(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateConnectedStatus(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOnDeviceClickListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->isNeedshowHelpConnectionGamePad()V

    return-void
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mReconnect:Z

    return p1
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->switchVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->applyUiTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 434
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDropDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->applyToDrawable(Landroid/widget/ImageView;)V

    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusBarLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductTileColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 437
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 2

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :cond_0
    return-void
.end method

.method private getConnectionTypeColorRes()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "colorRes":I
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 350
    const v0, 0x7f0e0018

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 347
    :pswitch_0
    const v0, 0x7f0e0066

    .line 348
    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getConnectionTypeRes()I
    .locals 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "drawableRes":I
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 333
    const v0, 0x7f02018d

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 327
    :pswitch_0
    const v0, 0x7f020266

    .line 328
    goto :goto_0

    .line 330
    :pswitch_1
    const v0, 0x7f020193

    .line 331
    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNeedshowHelpConnectionGamePad()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mHelpView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->isSelected()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDiscoveredGamePads:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDiscoveredGamePads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mHelpView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_2
    :goto_0
    return-void

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mHelpView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setGamePad()V
    .locals 6

    .prologue
    .line 359
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 360
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/UserSettings;

    move-result-object v3

    .line 361
    .local v3, "userSettings":Lcom/parrot/freeflight/UserSettings;
    invoke-virtual {v3}, Lcom/parrot/freeflight/UserSettings;->getUserDrone()Lcom/parrot/freeflight/UserDrone;

    move-result-object v2

    .line 362
    .local v2, "userDrone":Lcom/parrot/freeflight/UserDrone;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 364
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v4, v5, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setGamepad(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 365
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->switchToConnectedMode()V

    .line 366
    return-void

    .line 362
    .end local v1    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0
.end method

.method private switchDropDownImageOrientation(ZZ)V
    .locals 2
    .param p1, "dropDownMenuOpening"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 418
    if-eqz p1, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    .line 419
    .local v0, "endValue":F
    :goto_0
    if-eqz p2, :cond_1

    .line 420
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDropDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 424
    :goto_1
    return-void

    .line 418
    .end local v0    # "endValue":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    .restart local v0    # "endValue":F
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDropDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_1
.end method

.method private switchVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 260
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOpened:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOpened:Z

    .line 261
    iget-boolean v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOpened:Z

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->switchDropDownImageOrientation(ZZ)V

    .line 262
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->switchVisibility()V

    .line 263
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->switchVisibility()V

    .line 264
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateResetButtonVisibility()V

    .line 265
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateConnectedStatus(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 276
    const-string v1, "GamePadConfActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectedStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 279
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainFlypadOk()V

    .line 280
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getName()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->getConnectionTypeRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->getConnectionTypeColorRes()I

    move-result v2

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 284
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 290
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusTextView:Landroid/widget/TextView;

    const v2, 0x7f080134

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-boolean v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mReconnect:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    .line 297
    iput-boolean v5, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mReconnect:Z

    .line 298
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->forgetGamePad(Lcom/parrot/freeflight/gamepad/GamePad;)V

    .line 299
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->switchVisibility()V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->startScan()V

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusTextView:Landroid/widget/TextView;

    const v2, 0x7f080131

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->switchToDisconnectedMode()V

    .line 312
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateResetButtonVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 268
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 254
    const-string v1, "JOYSTICK_PARAMS_EXTRA"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;

    .line 255
    .local v0, "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->saveGamePadPreferences(Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    .line 257
    .end local v0    # "gamePadJoystickParams":Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f040047

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->setContentView(I)V

    .line 101
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 102
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->getSelectedGamePad()Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    .line 103
    .local v1, "selectedGamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/GamePad;->getState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mReconnect:Z

    .line 104
    const v2, 0x7f0f01a1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mHelpView:Landroid/view/View;

    .line 105
    const v2, 0x7f0f00bb

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 106
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$3;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_0

    .line 113
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    const v2, 0x7f0f019a

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mRootLayout:Landroid/view/View;

    .line 116
    const v2, 0x7f0f00f2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusBarLayout:Landroid/view/View;

    .line 117
    const v2, 0x7f0f019d

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 118
    const v2, 0x7f0f0185

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusTextView:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f0f019c

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionTypeImageView:Landroid/widget/ImageView;

    .line 120
    const v2, 0x7f0f019e

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f0f01a0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .line 123
    const v2, 0x7f0f0113

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    .line 124
    const v2, 0x7f0f019f

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    .line 127
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v2, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->setActivity(Landroid/app/Activity;)V

    .line 129
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->updateConnectedStatus(I)V

    .line 131
    const v2, 0x7f0f0100

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDropDownButton:Landroid/widget/ImageButton;

    .line 132
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mDropDownButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$4;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mResetButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$5;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$6;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setOnVisibilityChangeListener(Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnVisibilityChangeListener;)V

    .line 162
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListView:Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mOnDeviceClickListener:Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->setOnDeviceClickListener(Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 166
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$7;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$7;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->fixPreLollipopTheme()V

    .line 190
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 191
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v3, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$8;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$8;-><init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 197
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 198
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mForgetTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 200
    const v2, 0x7f0f01a2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 201
    const v2, 0x7f0f01a3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    return-void

    .line 103
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadListListener:Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeGamePadListListener(Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;)V

    .line 244
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/gamepad/GamePad;->setMode(I)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 246
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 247
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 248
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "GamePadConfActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->onJoystickEvent(FFFF)Z

    move-result v0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 210
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->addGamePadStateListener()V

    .line 212
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->isNeedshowHelpConnectionGamePad()V

    .line 213
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->removeGamePadStateListener()V

    .line 227
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadStateListener:Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->stopScan()V

    .line 233
    :cond_1
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 234
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->mGamePadConfigurationView:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->onTriggerEvent(FF)Z

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
