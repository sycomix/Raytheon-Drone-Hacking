.class public Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;
.super Ljava/lang/Object;
.source "ARDiscoveryBLEDiscoveryImpl.java"

# interfaces
.implements Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;
    }
.end annotation


# static fields
.field private static final ARDISCOVERY_BT_VENDOR_ID:I = 0x43

.field private static final ARDISCOVERY_USB_VENDOR_ID:I = 0x19cf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private askForLeDiscovering:Ljava/lang/Boolean;

.field private bleDeviceServicesHmap:Ljava/util/HashMap;
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

.field private bleIsAvailable:Z

.field private bleScanner:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

.field private context:Landroid/content/Context;

.field private isLeDiscovering:Ljava/lang/Boolean;

.field private leScanCallback:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private networkStateChangedFilter:Landroid/content/IntentFilter;

.field private networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private opened:Z

.field private final supportedProducts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
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
    .local p1, "supportedProducts":Ljava/util/Set;, "Ljava/util/Set<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->askForLeDiscovering:Ljava/lang/Boolean;

    .line 81
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v1, "ARDiscoveryBLEDiscoveryImpl new !!!!"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->supportedProducts:Ljava/util/Set;

    .line 84
    iput-boolean v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->opened:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->networkStateChangedFilter:Landroid/content/IntentFilter;

    .line 89
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->networkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$1;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->leScanCallback:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->supportedProducts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->notificationBLEServiceDeviceUpDate(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->askForLeDiscovering:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->askForLeDiscovering:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleConnect()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDisconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleScanner:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    return-object v0
.end method

.method private bleConnect()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleScanner:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->start()V

    .line 296
    :cond_0
    return-void
.end method

.method private bleDisconnect()V
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleScanner:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;->stop()V

    .line 304
    :cond_0
    return-void
.end method

.method private bleServicesListHasChanged(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, "newBLEDeviceServicesHmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v3, "bleServicesListHasChanged"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "res":Z
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 595
    const/4 v1, 0x1

    .line 615
    :cond_0
    :goto_0
    return v1

    .line 597
    :cond_1
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 600
    const/4 v1, 0x1

    goto :goto_0

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 607
    .local v0, "bleDevice":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 610
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getBLEAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v2, "BLE Is NOT Available"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iput-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    .line 270
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->context:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 257
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 259
    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 261
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v2, "BLE Is NOT Available"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-boolean v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    goto :goto_0

    .line 266
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v2, "BLE Is Available"

    invoke-static {v1, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    goto :goto_0
.end method

.method private initBLE()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleScanner:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$BLEScanner;

    .line 277
    new-instance v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$2;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$2;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->leScanCallback:Ljava/lang/Object;

    .line 287
    return-void
.end method

.method private notificationBLEServiceDeviceUpDate(Ljava/util/HashMap;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "newBLEDeviceServicesHmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;>;"
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationBLEServiceDeviceUpDate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleServicesListHasChanged(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    .line 569
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$3;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl$3;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleConnect()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDisconnect()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v1, "Close BLE"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    if-eqz v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDisconnect()V

    .line 197
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->context:Landroid/content/Context;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 182
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
    .line 621
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

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
    .line 154
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->TAG:Ljava/lang/String;

    const-string v1, "Open BLE"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->broadcaster:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 156
    iput-object p2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->context:Landroid/content/Context;

    .line 157
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDeviceServicesHmap:Ljava/util/HashMap;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    .line 167
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->getBLEAvailability()V

    .line 169
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->initBLE()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->networkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->networkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleIsAvailable:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleConnect()V

    .line 223
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->askForLeDiscovering:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->bleDisconnect()V

    .line 239
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->isLeDiscovering:Ljava/lang/Boolean;

    .line 241
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryBLEDiscoveryImpl;->askForLeDiscovering:Ljava/lang/Boolean;

    .line 242
    return-void
.end method
