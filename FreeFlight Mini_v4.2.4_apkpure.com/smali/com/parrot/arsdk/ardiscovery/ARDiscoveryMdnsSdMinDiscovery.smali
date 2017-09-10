.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;
.super Ljava/lang/Object;
.source "ARDiscoveryMdnsSdMinDiscovery.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

.field private context:Landroid/content/Context;

.field private final devicesServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;"
        }
    .end annotation
.end field

.field private final mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

.field private final mdsnSdListener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final netDeviceServicesHmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private final networkStateChangedFilter:Landroid/content/IntentFilter;

.field private final networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "supportedProducts":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;

    invoke-direct {v2, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdsnSdListener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    .line 75
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v3, "Creating MdsnSd based ARDiscovery"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    .line 78
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_NSNETSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_FORMAT:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "devicesService":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v0    # "devicesService":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    .line 89
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdsnSdListener:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;

    invoke-direct {v3, v2, v4}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;-><init>([Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin$Listener;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    .line 92
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->devicesServices:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Closing MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->stop()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceServicesArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    .locals 3
    .param p1, "broadcaster"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v2, "Opening MdsnSd based ARDiscovery"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 100
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 103
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    const-string v1, "ARDiscovery"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 98
    .end local v0    # "wifi":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    if-nez v0, :cond_1

    .line 122
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Starting MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->TAG:Ljava/lang/String;

    const-string v1, "Stopping MdsnSd based ARDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->started:Z

    .line 139
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->mdnsSd:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 145
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->netDeviceServicesHmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
