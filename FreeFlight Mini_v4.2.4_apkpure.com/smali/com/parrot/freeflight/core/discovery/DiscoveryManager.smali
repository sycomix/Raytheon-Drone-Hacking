.class public Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;,
        Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;,
        Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
    }
.end annotation


# instance fields
.field private mBLEDiscovering:Z

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDevices:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscovering:Z

.field private final mDiscoveryConnection:Landroid/content/ServiceConnection;

.field private mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

.field private final mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenConfigurationListener:Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

.field private mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUsbDiscovering:Z

.field private mWifiDiscovering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ScreenConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenConfiguration"    # Lcom/parrot/freeflight/core/ScreenConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    .line 337
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$1;-><init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfigurationListener:Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

    .line 354
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$2;-><init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

    .line 364
    new-instance v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;-><init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryConnection:Landroid/content/ServiceConnection;

    .line 74
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfigurationListener:Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/ScreenConfiguration;->registerListener(Lcom/parrot/freeflight/core/ScreenConfiguration$IListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .param p1, "x1"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->notifyChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    return v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    return v0
.end method

.method private doConnect()V
    .locals 5

    .prologue
    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 222
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 224
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 225
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "kARDiscoveryServiceNotificationServicesDevicesListUpdated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 227
    return-void
.end method

.method private doDisconnect()V
    .locals 5

    .prologue
    .line 258
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 259
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mOnDeviceListUpdated:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 261
    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 263
    return-void
.end method

.method private doStartDiscovering()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v0, :cond_2

    .line 231
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startWifiDiscovering()V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startBLEDiscovering()V

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startUsbDiscovering()V

    .line 241
    :cond_2
    return-void
.end method

.method private doStopDiscovering()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v0, :cond_2

    .line 245
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopBLEDiscovering()V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopWifiDiscovering()V

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscoveryService:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopUsbDiscovering()V

    .line 255
    :cond_2
    return-void
.end method

.method private notifyChanged()V
    .locals 5

    .prologue
    .line 345
    iget-object v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 346
    .local v2, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 347
    .local v1, "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;

    .line 348
    .local v0, "listener":Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
    if-eqz v0, :cond_0

    .line 349
    iget-object v4, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;->onChanged(Ljava/util/List;)V

    goto :goto_0

    .line 352
    .end local v0    # "listener":Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
    .end local v1    # "listenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;>;"
    :cond_1
    return-void
.end method

.method private runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$State:[I

    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 85
    :pswitch_2
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 89
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 91
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->SHOULD_CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 96
    const-string v0, "FFMini.Discovery"

    const-string v1, "Cannot connect discovery because screen is off. Waiting for screen on to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    const-string v0, "FFMini.Discovery"

    const-string v1, "Receiving SCREEN_ON while state is IDLE but there are listener so start discovery service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 112
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 114
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :pswitch_6
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 127
    :pswitch_7
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 129
    :pswitch_8
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mScreenConfiguration:Lcom/parrot/freeflight/core/ScreenConfiguration;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/ScreenConfiguration;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 131
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 133
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "FFMini.Discovery"

    const-string v1, "Cannot connect discovery because screen is off. Already waiting for screen on to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    :pswitch_9
    const-string v0, "FFMini.Discovery"

    const-string v1, "receiving screen on and should connect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doConnect()V

    .line 146
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->CONNECTED:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 148
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 156
    :pswitch_a
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 157
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    goto/16 :goto_0

    .line 165
    :pswitch_b
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$4;->$SwitchMap$com$parrot$freeflight$core$discovery$DiscoveryManager$Event:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    :pswitch_c
    goto/16 :goto_0

    .line 167
    :pswitch_d
    iput-boolean v3, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 168
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStartDiscovering()V

    goto/16 :goto_0

    .line 171
    :pswitch_e
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 172
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStopDiscovering()V

    goto/16 :goto_0

    .line 175
    :pswitch_f
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    .line 177
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 178
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 179
    iput-boolean v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 180
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStopDiscovering()V

    .line 181
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doDisconnect()V

    .line 182
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 184
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    :cond_3
    const-string v0, "FFMini.Discovery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot disconnect discovery because screen is on and there are still some listeners : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    :pswitch_10
    const-string v0, "FFMini.Discovery"

    const-string v1, "receiving screen off while connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doStopDiscovering()V

    .line 197
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->doDisconnect()V

    .line 198
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;->IDLE:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    iput-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mState:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$State;

    .line 200
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery service stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    :pswitch_11
    const-string v0, "FFMini.Discovery"

    const-string v1, "discovery already connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDiscovering:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->notifyChanged()V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_b
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 125
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    .line 165
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 302
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 303
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 304
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 305
    return-void
.end method

.method public connect(Ljava/lang/String;Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager$IListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 267
    const-string v0, "FFMini.Discovery"

    const-string v1, "ask for connecting discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->CONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 273
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 277
    const-string v0, "FFMini.Discovery"

    const-string v1, "ask for disconnecting discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->DISCONNECT:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 283
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 287
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 288
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 289
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 290
    return-void
.end method

.method public startBLEDiscovery()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 309
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 310
    return-void
.end method

.method public startUsbDiscovery()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 319
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 320
    return-void
.end method

.method public startWifiDiscovery()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 314
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->START:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 315
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 294
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 295
    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 296
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 297
    return-void
.end method

.method public stopBLEDiscovery()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mBLEDiscovering:Z

    .line 324
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 325
    return-void
.end method

.method public stopUsbDiscovery()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mUsbDiscovering:Z

    .line 334
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 335
    return-void
.end method

.method public stopWifiDiscovery()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->mWifiDiscovering:Z

    .line 329
    sget-object v0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;->STOP:Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->runStateMachine(Lcom/parrot/freeflight/core/discovery/DiscoveryManager$Event;)V

    .line 330
    return-void
.end method
