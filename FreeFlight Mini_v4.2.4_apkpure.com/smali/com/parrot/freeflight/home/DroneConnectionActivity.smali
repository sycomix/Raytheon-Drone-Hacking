.class public Lcom/parrot/freeflight/home/DroneConnectionActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "DroneConnectionActivity.java"


# static fields
.field private static final CONNECTION_TIMING:I = 0x7d0

.field public static final KEY_EXTRA_DATA_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final KEY_EXTRA_DEVICE_SERVICE:Ljava/lang/String; = "device_service"


# instance fields
.field private mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

.field private final mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

.field private mCurrentNetworkIcon:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

.field private mDoneImageView:Landroid/widget/ImageView;

.field private mDroneNameTextView:Landroid/widget/TextView;

.field private mErrorImageView:Landroid/widget/ImageView;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private mProductImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimingHandler:Landroid/os/Handler;

.field private mUserSettings:Lcom/parrot/freeflight/UserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 43
    sget-object v0, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    iput-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mTimingHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity$3;-><init>(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/DroneConnectionActivity;)Lcom/parrot/freeflight/core/connection/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/DroneConnectionActivity;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/home/DroneConnectionActivity;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/home/DroneConnectionActivity;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/DroneConnectionActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->updateView()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 252
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/parrot/freeflight/home/DroneConnectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "device_service"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    const-string v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    return-object v1
.end method

.method private updateDroneIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 2
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    invoke-static {p1}, Lcom/parrot/freeflight/home/connection/DroneImageSelector;->getImageId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v0

    .line 234
    .local v0, "resId":I
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mProductImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    return-void
.end method

.method private updateLoadingIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V
    .locals 4
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f0201ab

    const v2, 0x7f02018d

    .line 216
    invoke-static {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 217
    .local v0, "productNetwork":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v0, v1, :cond_1

    .line 218
    iget v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mCurrentNetworkIcon:I

    if-eq v1, v2, :cond_0

    .line 219
    iput v2, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mCurrentNetworkIcon:I

    .line 220
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const v2, 0x7f0e0018

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mCurrentNetworkIcon:I

    if-eq v1, v3, :cond_0

    .line 225
    iput v3, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mCurrentNetworkIcon:I

    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const v2, 0x7f0e0066

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private updateView()V
    .locals 7

    .prologue
    const v6, 0x7f05001c

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 149
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDroneNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getProductID()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    .line 154
    .local v0, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->updateLoadingIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->updateDroneIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    .line 157
    .end local v0    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v1, :cond_8

    .line 158
    sget-object v1, Lcom/parrot/freeflight/home/DroneConnectionActivity$4;->$SwitchMap$com$parrot$freeflight$core$connection$ConnectionManager$ConnectionState:[I

    iget-object v2, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionState:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :cond_4
    return-void

    .line 160
    :pswitch_0
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainConnectToDroneOk()V

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    iget-object v2, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/UserSettings;->setCurrentUserDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 162
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mStatusTextView:Landroid/widget/TextView;

    const v2, 0x7f0804ae

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 169
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_6
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mTimingHandler:Landroid/os/Handler;

    new-instance v2, Lcom/parrot/freeflight/home/DroneConnectionActivity$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity$2;-><init>(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_7
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mStatusTextView:Landroid/widget/TextView;

    const v2, 0x7f0803d2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 202
    :cond_8
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :cond_9
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->stop()V

    .line 143
    :goto_0
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 145
    :goto_1
    const v0, 0x7f050015

    const v1, 0x7f050014

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->overridePendingTransition(II)V

    .line 146
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->supportFinishAfterTransition()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v7, 0x7f040022

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    .line 64
    .local v3, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/UserSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    .line 65
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .line 66
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "bundle"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 68
    .local v4, "data":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 69
    const-string v7, "device_service"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 70
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v7, :cond_0

    if-nez p1, :cond_0

    .line 71
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v8, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->connectDrone(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    .line 75
    .end local v4    # "data":Landroid/os/Bundle;
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-nez v7, :cond_1

    if-eqz p1, :cond_1

    .line 76
    const-string v7, "device_service"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 78
    :cond_1
    const v7, 0x7f0f00c9

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDroneNameTextView:Landroid/widget/TextView;

    .line 79
    const v7, 0x7f0f00c8

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "cancelTextView":Landroid/widget/TextView;
    new-instance v7, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity$1;-><init>(Lcom/parrot/freeflight/home/DroneConnectionActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v7, 0x7f0f00cd

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mStatusTextView:Landroid/widget/TextView;

    .line 94
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mStatusTextView:Landroid/widget/TextView;

    const v8, 0x7f0804ae

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v7, 0x7f0f00cb

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mLoadingImageView:Landroid/widget/ImageView;

    .line 97
    const v7, 0x7f0f00cc

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mErrorImageView:Landroid/widget/ImageView;

    .line 98
    const v7, 0x7f0f00ca

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDoneImageView:Landroid/widget/ImageView;

    .line 99
    const v7, 0x7f0f00ce

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mProductImageView:Landroid/widget/ImageView;

    .line 100
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v7, :cond_2

    .line 101
    invoke-direct {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->updateView()V

    .line 103
    :cond_2
    const v7, 0x7f0f00b2

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/CoreManager;->getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;

    move-result-object v1

    .line 105
    .local v1, "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 106
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 107
    const v7, 0x7f020226

    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v7, v8, v9}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/parrot/freeflight/home/DroneConnectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    iget-object v7, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    const/4 v7, 0x2

    invoke-static {p0, v2, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 114
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "device_service"

    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mDeviceService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManager:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/DroneConnectionActivity;->mConnectionManagerListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 125
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 126
    return-void
.end method
