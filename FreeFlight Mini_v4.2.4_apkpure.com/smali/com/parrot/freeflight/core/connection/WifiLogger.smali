.class public Lcom/parrot/freeflight/core/connection/WifiLogger;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# instance fields
.field private mNetworkStatusChanged:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final macIpMap:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->macIpMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Lcom/parrot/freeflight/core/connection/WifiLogger$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/core/connection/WifiLogger$1;-><init>(Lcom/parrot/freeflight/core/connection/WifiLogger;)V

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->mNetworkStatusChanged:Landroid/content/BroadcastReceiver;

    .line 36
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    sget-boolean v0, Lcom/parrot/controller/utils/DisconnectionsLogger;->isLoggingDisconnectionInfos:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->mNetworkStatusChanged:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/core/connection/WifiLogger;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/core/connection/WifiLogger;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/connection/WifiLogger;->findInterfaceName(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findInterfaceName(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->macIpMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->macIpMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 128
    .restart local v5    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 110
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 112
    .local v2, "i":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 115
    .local v3, "j":Ljava/net/InetAddress;
    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 116
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-static {v7}, Lcom/parrot/freeflight/core/connection/WifiLogger;->fromByteArray([B)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 117
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 118
    iget-object v6, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->macIpMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    .end local v0    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "i":Ljava/net/NetworkInterface;
    .end local v3    # "j":Ljava/net/InetAddress;
    .end local v4    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method private static fromByteArray([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 132
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public logWifiInfo(Lcom/parrot/controller/devicecontrollers/DeviceController;)V
    .locals 15
    .param p1, "droneDeviceController"    # Lcom/parrot/controller/devicecontrollers/DeviceController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    sget-object v11, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->eARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;

    .line 44
    .local v11, "wifiType":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;
    sget-object v6, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;->eARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;

    .line 45
    .local v6, "wifiBand":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;
    const/4 v8, -0x1

    .line 46
    .local v8, "wifiChannel":I
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/controller/devicecontrollers/DeviceController;->getNotificationDictionary()Lcom/parrot/controller/devicecontrollers/ARBundle;

    move-result-object v2

    .line 48
    .local v2, "incomingBundle":Lcom/parrot/controller/devicecontrollers/ARBundle;
    const-string v13, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotification"

    invoke-virtual {v2, v13}, Lcom/parrot/controller/devicecontrollers/ARBundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 49
    .local v3, "interestingBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 50
    const-string v13, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationTypeKey"

    .line 51
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 52
    .local v12, "wifiTypeInt":I
    const-string v13, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationBandKey"

    .line 53
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 54
    .local v7, "wifiBandInt":I
    const-string v13, "ARDrone3DeviceControllerNetworkSettingsStateWifiSelectionChangedNotificationChannelKey"

    .line 55
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    .line 57
    .local v9, "wifiChannelByte":B
    and-int/lit16 v8, v9, 0xff

    .line 59
    invoke-static {v12}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_TYPE_ENUM;

    move-result-object v11

    .line 60
    invoke-static {v7}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_NETWORKSETTINGSSTATE_WIFISELECTIONCHANGED_BAND_ENUM;

    move-result-object v6

    .line 63
    .end local v2    # "incomingBundle":Lcom/parrot/controller/devicecontrollers/ARBundle;
    .end local v3    # "interestingBundle":Landroid/os/Bundle;
    .end local v7    # "wifiBandInt":I
    .end local v9    # "wifiChannelByte":B
    .end local v12    # "wifiTypeInt":I
    :cond_0
    const-string/jumbo v1, "unknown"

    .line 64
    .local v1, "SSID":Ljava/lang/String;
    const-string/jumbo v0, "unknown"

    .line 65
    .local v0, "BSSID":Ljava/lang/String;
    const-string/jumbo v5, "unknown"

    .line 67
    .local v5, "supplicantState":Ljava/lang/String;
    iget-object v13, p0, Lcom/parrot/freeflight/core/connection/WifiLogger;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 68
    .local v10, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_1

    .line 70
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v4, "stringbuilder":Ljava/lang/StringBuilder;
    const-string v13, "SSID "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\nBSSID "

    .line 77
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\nSupplicant State "

    .line 78
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\nwifiChannel "

    .line 79
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\nwifiType "

    .line 80
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\nwifiChannel "

    .line 81
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/parrot/controller/utils/DisconnectionsLogger;->addLogInfo(Ljava/lang/String;)V

    .line 84
    return-void
.end method
