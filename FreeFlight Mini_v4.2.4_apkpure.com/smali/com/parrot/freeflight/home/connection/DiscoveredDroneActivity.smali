.class public Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "DiscoveredDroneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;,
        Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$Holder;
    }
.end annotation


# static fields
.field public static final DISCOVERY_UID:Ljava/lang/String; = "discovery_uid"

.field public static final EXTRA_DEVICE_LIST:Ljava/lang/String; = "device_list"


# instance fields
.field private mBluetoothState:I

.field private final mBluetoothStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

.field private mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

.field private mDiscoveryUid:Ljava/lang/String;

.field private mDroneListAdapter:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private final mLocationStateChangedIntentFilter:Landroid/content/IntentFilter;

.field private final mLocationStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mSubtitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedIntentFilter:Landroid/content/IntentFilter;

    .line 64
    new-instance v0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$2;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$5;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->updateSubtitleTextView()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDroneListAdapter:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLoadingImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->isBluetoothOn()Z

    move-result v0

    return v0
.end method

.method private isBluetoothOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 261
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 263
    .local v1, "state":I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 265
    .end local v1    # "state":I
    :cond_1
    return v2
.end method

.method private updateBluetoothState()V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 222
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/16 v1, 0xc

    iput v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->updateSubtitleTextView()V

    .line 228
    return-void

    .line 225
    :cond_0
    const/16 v1, 0xa

    iput v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    goto :goto_0
.end method

.method private updateSubtitleTextView()V
    .locals 4

    .prologue
    const v3, 0x7f0e00c1

    .line 231
    invoke-static {}, Lcom/parrot/freeflight/location/LocationUtils;->needLocationForBleScan()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/parrot/freeflight/location/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 232
    .local v0, "needLocationForBle":Z
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 233
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0804e4

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0e00e5

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 231
    .end local v0    # "needLocationForBle":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    .restart local v0    # "needLocationForBle":Z
    :cond_2
    iget v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    const v2, 0x7f080582

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 238
    :cond_4
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    const v2, 0x7f08061f

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->stop()V

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    .line 96
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v8, 0x7f040023

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->setContentView(I)V

    .line 98
    const v8, 0x7f0f00cf

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 99
    .local v7, "titleTextView":Landroid/widget/TextView;
    const v8, 0x7f0f00d0

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    .line 100
    const v8, 0x7f0f00cb

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLoadingImageView:Landroid/widget/ImageView;

    .line 101
    const v8, 0x7f0f00d1

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 103
    .local v4, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 104
    new-instance v8, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v8, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 105
    const v8, 0x7f0f00c8

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, "cancelTextView":Landroid/widget/TextView;
    new-instance v8, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$3;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "device_list"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    .local v3, "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    :goto_0
    new-instance v8, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$1;)V

    iput-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDroneListAdapter:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    .line 124
    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDroneListAdapter:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    invoke-virtual {v8, v3}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;->update(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 125
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 126
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_1
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDroneListAdapter:Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$DroneListAdapter;

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string v8, "discovery_uid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    .line 135
    :cond_0
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getDiscoveryManager()Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    move-result-object v8

    iput-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .line 137
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "android.location.MODE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const v8, 0x7f0f00b2

    invoke-virtual {p0, v8}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 141
    .local v5, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parrot/freeflight/core/CoreManager;->getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;

    move-result-object v1

    .line 142
    .local v1, "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 143
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 144
    const v8, 0x7f020226

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v8, v9, v10}, Lcom/parrot/freeflight/core/BitmapCache;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    new-instance v8, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 151
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-static {p0, v8}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 153
    invoke-static {p0, v7, v11}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 154
    invoke-static {p0, v2, v11}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 155
    return-void

    .line 121
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    .end local v3    # "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    .end local v5    # "rootView":Landroid/view/View;
    .end local v6    # "size":Landroid/graphics/Point;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    goto/16 :goto_0

    .line 128
    :cond_2
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v8, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const v9, 0x7f050013

    invoke-static {p0, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 194
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 195
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
    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 208
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 209
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "discovery_uid"

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 160
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->updateBluetoothState()V

    .line 161
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryListener:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->connect(Ljava/lang/String;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;)V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f0803ba

    aput v3, v2, v4

    const v3, 0x7f0803b7

    new-instance v4, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity$4;-><init>(Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 177
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->isChangingConfigurations()Z

    move-result v0

    .line 182
    .local v0, "isChangingConfiguration":Z
    if-nez v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->stopBLEDiscovery()V

    .line 184
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryManager:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mDiscoveryUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->disconnect(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mLocationStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->mBluetoothStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/home/connection/DiscoveredDroneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 189
    return-void
.end method
