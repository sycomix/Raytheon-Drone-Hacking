.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
.super Ljava/lang/Object;
.source "ARDiscoveryJmdnsDiscovery.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static nullAddress:Ljava/net/InetAddress;


# instance fields
.field private askForNetDiscovering:Ljava/lang/Boolean;

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

.field private hostAddress:Ljava/net/InetAddress;

.field private hostIp:Ljava/lang/String;

.field private isNetDiscovering:Ljava/lang/Boolean;

.field private jmdnsCreatorAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDNSListener:Ljavax/jmdns/ServiceListener;

.field private mDNSManager:Ljavax/jmdns/JmDNS;

.field private final mJmDNSLock:Ljava/lang/Object;

.field private netDeviceServicesHmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;"
        }
    .end annotation
.end field

.field private networkStateChangedFilter:Landroid/content/IntentFilter;

.field private networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private opened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 7
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
    .local p1, "supportedProducts":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const/4 v6, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    .line 78
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->askForNetDiscovering:Ljava/lang/Boolean;

    .line 94
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mJmDNSLock:Ljava/lang/Object;

    .line 98
    iput-boolean v6, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->opened:Z

    .line 102
    :try_start_0
    const-string v3, "0.0.0.0"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    sput-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->nullAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->nullAddress:Ljava/net/InetAddress;

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostAddress:Ljava/net/InetAddress;

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->devicesServices:Ljava/util/Map;

    .line 115
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_NSNETSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    .local v2, "i":I
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 117
    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_FORMAT:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "devicesService":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_DOMAIN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->devicesServices:Ljava/util/Map;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v0    # "devicesService":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v2    # "i":I
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    .line 127
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;

    invoke-direct {v3, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)V

    iput-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->update()V

    return-void
.end method

.method static synthetic access$1002(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->askForNetDiscovering:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p1, "x1"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->notificationNetServiceDeviceAdd(Ljavax/jmdns/ServiceEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p1, "x1"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->notificationNetServicesDevicesResolved(Ljavax/jmdns/ServiceEvent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p1, "x1"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->notificationNetServiceDeviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->devicesServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$300()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->nullAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljavax/jmdns/JmDNS;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/JmDNS;)Ljavax/jmdns/JmDNS;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p1, "x1"    # Ljavax/jmdns/JmDNS;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;)Ljavax/jmdns/ServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSListener:Ljavax/jmdns/ServiceListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Ljavax/jmdns/ServiceListener;)Ljavax/jmdns/ServiceListener;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;
    .param p1, "x1"    # Ljavax/jmdns/ServiceListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSListener:Ljavax/jmdns/ServiceListener;

    return-object p1
.end method

.method private getServiceIP(Ljavax/jmdns/ServiceEvent;)Ljava/lang/String;
    .locals 6
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 419
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceIP serviceEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v2, 0x0

    .line 423
    .local v2, "serviceIP":Ljava/lang/String;
    const/4 v1, 0x0

    .line 426
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 433
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 435
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_0
    return-object v2

    .line 428
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method private getServicePort(Ljavax/jmdns/ServiceEvent;)I
    .locals 6
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 475
    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServicePort serviceEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v2, 0x0

    .line 479
    .local v2, "servicePort":I
    const/4 v1, 0x0

    .line 482
    .local v1, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 489
    :goto_0
    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v2

    .line 494
    :cond_0
    return v2

    .line 484
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method private getServiceTxtRecord(Ljavax/jmdns/ServiceEvent;)Ljava/lang/String;
    .locals 9
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 443
    const/4 v4, 0x0

    .line 445
    .local v4, "serviceData":Ljava/lang/String;
    const/4 v3, 0x0

    .line 448
    .local v3, "info":Ljavax/jmdns/ServiceInfo;
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v6

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 455
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v6

    if-eqz v6, :cond_0

    .line 457
    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v0

    .line 458
    .local v0, "data":[B
    const/4 v6, 0x0

    aget-byte v1, v0, v6

    .line 462
    .local v1, "dataSize":I
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "serviceData":Ljava/lang/String;
    .local v5, "serviceData":Ljava/lang/String;
    move-object v4, v5

    .line 470
    .end local v0    # "data":[B
    .end local v1    # "dataSize":I
    .end local v5    # "serviceData":Ljava/lang/String;
    .restart local v4    # "serviceData":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 450
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 464
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .restart local v0    # "data":[B
    .restart local v1    # "dataSize":I
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private mdnsConnect()V
    .locals 5

    .prologue
    .line 280
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 286
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 290
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostIp:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostIp:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostIp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    .line 306
    new-instance v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$JmdnsCreatorAsyncTask;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery$1;)V

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->jmdnsCreatorAsyncTask:Landroid/os/AsyncTask;

    .line 307
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->jmdnsCreatorAsyncTask:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 310
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_1
    return-void

    .line 293
    .restart local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method private mdnsDestroy()V
    .locals 7

    .prologue
    .line 180
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    const-string v3, "mdnsDestroy"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mJmDNSLock:Ljava/lang/Object;

    monitor-enter v3

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSListener:Ljavax/jmdns/ServiceListener;

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->devicesServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, "devicesService":Ljava/lang/String;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeServiceListener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSListener:Ljavax/jmdns/ServiceListener;

    invoke-virtual {v4, v0, v5}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_0

    .line 209
    .end local v0    # "devicesService":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 195
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSListener:Ljavax/jmdns/ServiceListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    invoke-virtual {v2}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    .line 209
    :cond_2
    monitor-exit v3

    .line 210
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private mdnsDisconnect()V
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->nullAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->hostAddress:Ljava/net/InetAddress;

    .line 316
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mdnsDestroy()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->jmdnsCreatorAsyncTask:Landroid/os/AsyncTask;

    .line 318
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    .line 319
    return-void
.end method

.method private notificationNetServiceDeviceAdd(Ljavax/jmdns/ServiceEvent;)V
    .locals 10
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 323
    const/4 v3, 0x0

    .line 324
    .local v3, "ip":Ljava/lang/String;
    const/4 v4, 0x0

    .line 325
    .local v4, "port":I
    const/4 v5, 0x0

    .line 327
    .local v5, "txtRecord":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mJmDNSLock:Ljava/lang/Object;

    monitor-enter v2

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mDNSManager:Ljavax/jmdns/JmDNS;

    if-eqz v1, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->getServiceIP(Ljavax/jmdns/ServiceEvent;)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->getServicePort(Ljavax/jmdns/ServiceEvent;)I

    move-result v4

    .line 334
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->getServiceTxtRecord(Ljavax/jmdns/ServiceEvent;)Ljava/lang/String;

    move-result-object v5

    .line 336
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    if-eqz v3, :cond_1

    .line 341
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    .local v0, "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->devicesServices:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 344
    .local v7, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-eqz v7, :cond_2

    .line 347
    invoke-virtual {v7}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductID(I)I

    move-result v8

    .line 348
    .local v8, "productID":I
    new-instance v6, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0, v8}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 349
    .local v6, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 363
    .end local v0    # "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .end local v6    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .end local v7    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .end local v8    # "productID":I
    :cond_1
    :goto_0
    return-void

    .line 336
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 359
    .restart local v0    # "deviceNetService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceNetService;
    .restart local v7    # "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    :cond_2
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found an unknown service : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notificationNetServiceDeviceRemoved(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 4
    .param p1, "deviceService"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .prologue
    .line 401
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    const-string v2, "notificationServiceDeviceRemoved"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 406
    .local v0, "deviceServiceRemoved":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not known"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notificationNetServiceDeviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 383
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    const-string v2, "notificationServiceDeviceRemoved"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 388
    .local v0, "deviceServiceRemoved":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not known"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notificationNetServicesDevicesResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 4
    .param p1, "serviceEvent"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 367
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    const-string v2, "notificationServicesDevicesResolved"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 373
    .local v0, "known":Z
    if-nez v0, :cond_0

    .line 375
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service Resolved not know : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->notificationNetServiceDeviceAdd(Ljavax/jmdns/ServiceEvent;)V

    .line 379
    :cond_0
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 216
    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 217
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 218
    .local v2, "mWifi":Landroid/net/NetworkInfo;
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 220
    .local v1, "mEth":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    :cond_1
    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->askForNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mdnsConnect()V

    .line 226
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->askForNetDiscovering:Ljava/lang/Boolean;

    .line 246
    :cond_2
    return-void

    .line 231
    :cond_3
    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 233
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->askForNetDiscovering:Ljava/lang/Boolean;

    .line 236
    :cond_4
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mdnsDisconnect()V

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    .local v3, "netDeviceServicesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 243
    .local v4, "s":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-direct {p0, v4}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->notificationNetServiceDeviceRemoved(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mdnsDisconnect()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
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
    .line 614
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    .locals 3
    .param p1, "broadcaster"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 146
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    .line 147
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->netDeviceServicesHmap:Ljava/util/HashMap;

    .line 154
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->networkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 251
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 255
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 256
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mdnsConnect()V

    .line 265
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mWifi":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local v0    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "mWifi":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->askForNetDiscovering:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->isNetDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;->mdnsDisconnect()V

    .line 275
    :cond_0
    return-void
.end method
