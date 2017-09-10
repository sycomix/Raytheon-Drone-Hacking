.class public Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "DroneDiscoveringActivity.java"


# static fields
.field private static final CONTROLLER_TAG:Ljava/lang/String; = "controller"

.field private static final DISCOVERING_MINIMUM_DISPLAY:I = 0xbb8

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x7b


# instance fields
.field private mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

.field private final mControllerListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

.field private mControllerState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

.field private mErrorImageView:Landroid/widget/ImageView;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTimingHandler:Landroid/os/Handler;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 43
    sget-object v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->STATE_UNKNOWN:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTimingHandler:Landroid/os/Handler;

    .line 229
    new-instance v0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$5;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->startNextActivity(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->updateView()V

    return-void
.end method

.method private startNextActivity(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->finish()V

    .line 151
    return-void
.end method

.method private updateView()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const v9, 0x7f0e00ec

    const v8, 0x7f0802e3

    const v7, 0x7f0800e1

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "showLoading":Z
    const/4 v4, 0x0

    .line 156
    .local v4, "titleText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 157
    .local v2, "statusText":Ljava/lang/String;
    const/4 v3, -0x1

    .line 158
    .local v3, "statusTextColor":I
    sget-object v5, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$6;->$SwitchMap$com$parrot$freeflight$home$connection$DroneDiscoveringController$State:[I

    iget-object v6, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerState:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    invoke-virtual {v6}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 196
    const/4 v1, 0x1

    .line 199
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 206
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :cond_2
    if-eqz v1, :cond_6

    .line 209
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-nez v5, :cond_4

    .line 213
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const v6, 0x7f050013

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    :cond_4
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 216
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :cond_5
    :goto_1
    return-void

    .line 160
    :pswitch_0
    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    const v5, 0x7f080582

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    const v5, 0x7f0e00c1

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 164
    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v1, 0x1

    .line 168
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 171
    goto/16 :goto_0

    .line 174
    :pswitch_2
    const/4 v1, 0x0

    .line 175
    const v5, 0x7f08039c

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 178
    goto/16 :goto_0

    .line 181
    :pswitch_3
    const/4 v1, 0x1

    .line 182
    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {p0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-virtual {v5}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTimingHandler:Landroid/os/Handler;

    new-instance v6, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;

    invoke-direct {v6, p0, v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;Ljava/util/ArrayList;)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 219
    .end local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :cond_6
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 220
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 221
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :cond_7
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    iget-object v5, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mErrorImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->stop()V

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f040024

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->setContentView(I)V

    .line 51
    const v2, 0x7f0f00b2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$1;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0f00b3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0f00cd

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mStatusTextView:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0f00cb

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f0f00cc

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mErrorImageView:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f0f00d2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "skipTextView":Landroid/widget/TextView;
    new-instance v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$2;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "controller"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-direct {v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    .line 83
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    const-string v4, "controller"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 86
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 88
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 89
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mStatusTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 128
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 129
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 144
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->registerListener(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;)V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f0803ba

    aput v3, v2, v4

    const v3, 0x7f0803b7

    new-instance v4, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$3;-><init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 110
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->isChangingConfigurations()Z

    move-result v0

    .line 115
    .local v0, "isChangingConfiguration":Z
    if-nez v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->reset()V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mController:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mControllerListener:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->unregisterListener(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;)V

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->mTimingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 121
    return-void
.end method
