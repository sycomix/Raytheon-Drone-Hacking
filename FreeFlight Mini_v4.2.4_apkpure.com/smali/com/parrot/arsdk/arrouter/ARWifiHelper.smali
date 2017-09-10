.class public Lcom/parrot/arsdk/arrouter/ARWifiHelper;
.super Ljava/lang/Object;
.source "ARWifiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;,
        Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;
    }
.end annotation


# static fields
.field private static final DOUBLE_QUOTES:Ljava/lang/String; = "\""

.field private static final MAX_RSSI:I = -0x3e

.field private static final MIN_RSSI:I = -0x5c

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/parrot/arsdk/arrouter/ARWifiHelper;


# instance fields
.field private final badPassphraseSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private previousSupplicantState:Landroid/net/wifi/SupplicantState;

.field private scanResultBroadcast:Landroid/content/BroadcastReceiver;

.field private supplicantStateChangedBroadcast:Landroid/content/BroadcastReceiver;

.field private wifiHelperListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;",
            ">;"
        }
    .end annotation
.end field

.field private wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->previousSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 48
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->initBroadcastReceivers()V

    .line 51
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->registerReceivers()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->badPassphraseSSIDs:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiHelperListeners:Ljava/util/List;

    .line 58
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/arsdk/arrouter/ARWifiHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiHelperListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->previousSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/arsdk/arrouter/ARWifiHelper;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->previousSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->badPassphraseSSIDs:Ljava/util/List;

    return-object v0
.end method

.method public static addDoubleQuotesToSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calculateSignalLevel(II)I
    .locals 4
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 419
    const/4 v2, 0x0

    .line 420
    .local v2, "retval":I
    const/16 v3, -0x5c

    if-gt p0, v3, :cond_0

    .line 422
    const/4 v2, 0x0

    .line 435
    :goto_0
    return v2

    .line 424
    :cond_0
    const/16 v3, -0x3e

    if-lt p0, v3, :cond_1

    .line 426
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 430
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 431
    .local v0, "inputRange":F
    add-int/lit8 v3, p1, -0x1

    int-to-float v1, v3

    .line 432
    .local v1, "outputRange":F
    add-int/lit8 v3, p0, 0x5c

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v2, v3

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/arrouter/ARWifiHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-class v1, Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->instance:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->instance:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->instance:Lcom/parrot/arsdk/arrouter/ARWifiHelper;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;
    .locals 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 394
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;->NONE:Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    .line 395
    .local v0, "securityType":Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;->WEP:Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;->PSK:Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    goto :goto_0

    .line 403
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;->EAP:Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    goto :goto_0
.end method

.method public static isSecuredNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getSecurity(Landroid/net/wifi/ScanResult;)Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    move-result-object v0

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;->NONE:Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addWifiHelperListener(Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;)V
    .locals 1
    .param p1, "wifiHelperListener"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiHelperListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public connectToNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v7, 0x0

    .line 261
    .local v7, "res":Z
    const/4 v3, 0x0

    .line 262
    .local v3, "foundScanResult":Landroid/net/wifi/ScanResult;
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 264
    .local v8, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v11, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 266
    move-object v3, v8

    goto :goto_0

    .line 270
    .end local v8    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    if-eqz v3, :cond_5

    .line 272
    iget-object v10, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->isSavedNetwork(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 275
    iget-object v10, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->forgetNetwork(Ljava/lang/String;)Z

    .line 277
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 278
    .local v2, "conf":Landroid/net/wifi/WifiConfiguration;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 279
    sget-object v10, Lcom/parrot/arsdk/arrouter/ARWifiHelper$3;->$SwitchMap$com$parrot$arsdk$arrouter$ARWifiHelper$SECURITY_TYPE_ENUM:[I

    invoke-static {v3}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getSecurity(Landroid/net/wifi/ScanResult;)Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$SECURITY_TYPE_ENUM;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 296
    :goto_1
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    const-string/jumbo v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 297
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 298
    .local v1, "addNetworkRes":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 301
    .end local v1    # "addNetworkRes":I
    .end local v2    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 302
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 305
    .local v4, "i":Landroid/net/wifi/WifiConfiguration;
    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 307
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 308
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 309
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v7

    .line 319
    .end local v4    # "i":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    :goto_2
    if-nez v7, :cond_6

    .line 321
    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiHelperListeners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .line 323
    .local v6, "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;->onConnectionFailed(Ljava/lang/String;)V

    goto :goto_3

    .line 282
    .end local v6    # "listener":Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;
    .restart local v2    # "conf":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 285
    :pswitch_1
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 286
    const/4 v10, 0x0

    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 287
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 288
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 292
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 316
    .end local v2    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    sget-object v10, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->TAG:Ljava/lang/String;

    const-string v11, "Wifi network not found : can\'t connect"

    invoke-static {v10, v11}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 327
    :cond_6
    return v7

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public forgetNetwork(Ljava/lang/String;)Z
    .locals 9
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v2, 0x0

    .line 334
    .local v2, "retval":Z
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 335
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 336
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_0

    move v3, v2

    .line 355
    .end local v2    # "retval":Z
    .local v3, "retval":I
    :goto_0
    return v3

    .line 340
    .end local v3    # "retval":I
    .restart local v2    # "retval":Z
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 342
    .local v0, "i":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getCurrentSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 348
    :cond_2
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 349
    const/4 v2, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move v3, v2

    .line 355
    .restart local v3    # "retval":I
    goto :goto_0
.end method

.method public getCleanedSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 457
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 462
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 467
    :cond_1
    return-object p1
.end method

.method public getCurrentSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "SSID":Ljava/lang/String;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 195
    .local v1, "connectionInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_0

    .line 197
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->getCleanedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    return-object v0
.end method

.method public getSavedNetworkList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "scanResultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v4, "savedNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 239
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 241
    .local v1, "foundNetwork":Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .line 242
    .local v0, "found":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 243
    .local v2, "i":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->badPassphraseSSIDs:Ljava/util/List;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v0, 0x1

    .line 249
    .end local v2    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .restart local v2    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    .end local v0    # "found":Z
    .end local v1    # "foundNetwork":Landroid/net/wifi/ScanResult;
    .end local v2    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    return-object v4
.end method

.method public getWifiFromSSID(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "wifi":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 209
    .local v0, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    move-object v1, v0

    .line 216
    .end local v0    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    return-object v1
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiList:Ljava/util/List;

    return-object v0
.end method

.method public initBroadcastReceivers()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$1;-><init>(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->scanResultBroadcast:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;

    invoke-direct {v0, p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper$2;-><init>(Lcom/parrot/arsdk/arrouter/ARWifiHelper;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->supplicantStateChangedBroadcast:Landroid/content/BroadcastReceiver;

    .line 180
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public isSavedNetwork(Ljava/lang/String;)Z
    .locals 7
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 362
    .local v2, "res":Z
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 363
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 365
    .local v0, "i":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->badPassphraseSSIDs:Ljava/util/List;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 373
    .end local v0    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return v2

    .line 368
    .restart local v0    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSavedNetwork(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    .line 379
    .local v1, "res":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 381
    .local v0, "i":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->badPassphraseSSIDs:Ljava/util/List;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 389
    .end local v0    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return v1

    .line 384
    .restart local v0    # "i":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->scanResultBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->supplicantStateChangedBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    return-void
.end method

.method public removeWifiHelperListener(Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;)V
    .locals 1
    .param p1, "wifiHelperListener"    # Lcom/parrot/arsdk/arrouter/ARWifiHelper$ARWifiHelperListener;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiHelperListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 227
    return-void
.end method

.method public startScan()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 75
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->unregisterReceivers()V

    .line 83
    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->scanResultBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARWifiHelper;->supplicantStateChangedBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method
