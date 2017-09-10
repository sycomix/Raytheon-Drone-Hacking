.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
.super Landroid/app/Service;
.source "ARDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;,
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;,
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$eARDISCOVERY_SERVICE_EVENT_STATUS;
    }
.end annotation


# static fields
.field public static ARDISCOVERY_SERVICE_NET_DEVICE_DOMAIN:Ljava/lang/String; = null

.field public static ARDISCOVERY_SERVICE_NET_DEVICE_FORMAT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field public static final kARDiscoveryServiceNotificationServicesDevicesListUpdated:Ljava/lang/String; = "kARDiscoveryServiceNotificationServicesDevicesListUpdated"

.field private static supportedProducts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;"
        }
    .end annotation
.end field

.field private static usePublisher:Z

.field private static wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

.field private intentCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

.field private wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

.field private wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetDefineNetDeviceFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_FORMAT:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetDefineNetDeviceDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->ARDISCOVERY_SERVICE_NET_DEVICE_DOMAIN:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getProductFamily(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;
    .locals 2
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductFamily(I)I

    move-result v0

    .line 578
    .local v0, "family":I
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_FAMILY_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public static getProductFromName(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductFromName(Ljava/lang/String;)I

    move-result v0

    .line 564
    .local v0, "product":I
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public static getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .param p0, "productID"    # I

    .prologue
    .line 497
    invoke-static {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductFromProductID(I)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public static getProductID(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 480
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p0, v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductID(I)I

    move-result v0

    .line 484
    :goto_0
    return v0

    .line 483
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProductID:Unknown product : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProductName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 3
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 533
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-eq p0, v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductName(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 536
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProductName:Unknown product : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method public static getProductNetworkFromProduct(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 5
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 507
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    .line 508
    .local v0, "bleOrdinal":I
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_USBSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v4}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    .line 509
    .local v3, "usbOrdinal":I
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    .line 510
    .local v1, "productOrdinal":I
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_NSNETSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 512
    .local v2, "retVal":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-lt v1, v3, :cond_1

    .line 514
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_USBSERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 521
    :cond_0
    :goto_0
    return-object v2

    .line 516
    :cond_1
    if-lt v1, v0, :cond_0

    .line 518
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_BLESERVICE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_0
.end method

.method public static getProductPathName(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Ljava/lang/String;
    .locals 1
    .param p0, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->nativeGetProductPathName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initIntents()V
    .locals 4

    .prologue
    .line 240
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "initIntents"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->intentCache:Ljava/util/HashMap;

    .line 243
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->intentCache:Ljava/util/HashMap;

    const-string v1, "kARDiscoveryServiceNotificationServicesDevicesListUpdated"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "kARDiscoveryServiceNotificationServicesDevicesListUpdated"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method private declared-synchronized initWifiDiscovery()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 261
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryJmdnsDiscovery;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    .line 300
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi discovery asked is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and it will be ARDiscoveryJmdnsDiscovery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    .line 306
    :cond_0
    :goto_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Opening wifi discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v0, p0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V

    .line 309
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    if-eqz v0, :cond_4

    .line 311
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Opening wifi publisher"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {v0, p0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_1
    monitor-exit p0

    return-void

    .line 264
    :pswitch_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 266
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdDiscovery;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    .line 267
    sget-boolean v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usePublisher:Z

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    .line 271
    :cond_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Wifi discovery asked is nsd and it will be ARDiscoveryNsdDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 275
    :cond_2
    :try_start_2
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NSD can\'t run on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MdnsSdMin will be used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    .line 278
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Wifi discovery asked is nsd and it will be ARDiscoveryMdnsSdMinDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_1
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    .line 283
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Wifi discovery asked is MDSNSDMIN and it will be ARDiscoveryMdnsSdMinDiscovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 286
    sget-boolean v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usePublisher:Z

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    goto/16 :goto_0

    .line 293
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    goto/16 :goto_0

    .line 316
    :cond_4
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "No wifi publisher available"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static native nativeGetDefineNetDeviceDomain()Ljava/lang/String;
.end method

.method private static native nativeGetDefineNetDeviceFormat()Ljava/lang/String;
.end method

.method private static native nativeGetProductFamily(I)I
.end method

.method private static native nativeGetProductFromName(Ljava/lang/String;)I
.end method

.method private static native nativeGetProductFromProductID(I)I
.end method

.method public static native nativeGetProductID(I)I
.end method

.method private static native nativeGetProductName(I)Ljava/lang/String;
.end method

.method private static native nativeGetProductPathName(I)Ljava/lang/String;
.end method

.method public static setSupportedProducts(Ljava/util/Set;)V
    .locals 3
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
    .line 138
    .local p0, "products":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "setWifiPreferredWifiDiscoveryType must be called before stating ARDiscoveryService"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 144
    :cond_0
    :try_start_1
    sput-object p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    .line 145
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    return-void
.end method

.method public static setUsePublisher(Z)V
    .locals 0
    .param p0, "use"    # Z

    .prologue
    .line 150
    sput-boolean p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usePublisher:Z

    .line 151
    return-void
.end method

.method public static setWifiPreferredWifiDiscoveryType(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;)V
    .locals 3
    .param p0, "discoveryType"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    .prologue
    .line 126
    const-class v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "setWifiPreferredWifiDiscoveryType must be called before stating ARDiscoveryService"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 132
    :cond_0
    :try_start_1
    sput-object p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    return-void
.end method


# virtual methods
.method public broadcastDeviceServiceArrayUpdated()V
    .locals 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->intentCache:Ljava/util/HashMap;

    const-string v2, "kARDiscoveryServiceNotificationServicesDevicesListUpdated"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 396
    return-void
.end method

.method public getDeviceServicesArray()Ljava/util/List;
    .locals 5
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
    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v1, "deviceServicesArray":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->getDeviceServicesArray()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->getDeviceServicesArray()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    if-eqz v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->getDeviceService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    .line 412
    .local v0, "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    if-eqz v0, :cond_2

    .line 414
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v0    # "deviceService":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    :cond_2
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceServicesArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-object v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->initIntents()V

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 168
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;->ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_MDSNSDMIN:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscoveryType:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$ARDISCOVERYSERVICE_WIFI_DISCOVERY_TYPE_ENUM;

    .line 172
    :cond_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 174
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    .line 176
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->supportedProducts:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    .line 179
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v0, p0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V

    .line 181
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->initWifiDiscovery()V

    .line 183
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-direct {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    .line 184
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v0, p0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->open(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;Landroid/content/Context;)V

    .line 185
    return-void

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 203
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->close()V

    .line 206
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->close()V

    .line 212
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->close()V

    .line 218
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->close()V

    .line 224
    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    .line 227
    :cond_3
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 192
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "recreated by the system, don\'t need! stop it"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->stopSelf()V

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public publishService(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "product_id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {v1, p1, p2, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->publishService(ILjava/lang/String;I)Z

    move-result v0

    .line 457
    :cond_0
    return v0
.end method

.method public publishService(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {v1, p1, p2, p3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->publishService(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;I)Z

    move-result v0

    .line 438
    :cond_0
    return v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Start discoveries"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->start()V

    .line 327
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->start()V

    .line 328
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startBLEDiscovering()V
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Start BLE discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startUsbDiscovering()V
    .locals 2

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Start Usb discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :cond_0
    monitor-exit p0

    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startWifiDiscovering()V
    .locals 2

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Start wifi discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Stop discoveries"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->stop()V

    .line 335
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->stop()V

    .line 336
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopBLEDiscovering()V
    .locals 2

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Stop BLE discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->bleDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopUsbDiscovering()V
    .locals 2

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Stop Usb discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->usbDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryUsbDiscovery;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_0
    monitor-exit p0

    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWifiDiscovering()V
    .locals 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Stop wifi discovery"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiDiscovery:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;

    invoke-interface {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryWifiDiscovery;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unpublishServices()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiPublisher:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryNsdPublisher;->unpublishService()V

    .line 469
    :cond_0
    return-void
.end method
