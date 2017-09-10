.class public Lcom/parrot/controller/utils/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# static fields
.field private static final MAX_RSSI:I = -0x3e

.field private static final MIN_RSSI:I = -0x5c

.field private static final TAG:Ljava/lang/String; = "WifiUtils"


# instance fields
.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 30
    iget-object v0, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "WifiUtils"

    const-string v1, "Unable to get wifiManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method private addNewNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.CHANGE_WIFI_STATE"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 89
    .local v0, "newNetwork":Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 92
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 94
    iget-object v1, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 95
    iget-object v1, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 96
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .locals 4
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "retval":I
    const/16 v3, -0x5c

    if-gt p0, v3, :cond_0

    .line 179
    const/4 v2, 0x0

    .line 187
    :goto_0
    return v2

    .line 180
    :cond_0
    const/16 v3, -0x3e

    if-lt p0, v3, :cond_1

    .line 181
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 183
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 184
    .local v0, "inputRange":F
    add-int/lit8 v3, p1, -0x1

    int-to-float v1, v3

    .line 185
    .local v1, "outputRange":F
    add-int/lit8 v3, p0, 0x5c

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v2, v3

    goto :goto_0
.end method


# virtual methods
.method public connectToSSID(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.CHANGE_WIFI_STATE"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "WifiUtils"

    const-string/jumbo v1, "trying to add a null ssid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parrot/controller/utils/WifiUtils;->connectToSSIDIfAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/parrot/controller/utils/WifiUtils;->addNewNetwork(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/parrot/controller/utils/WifiUtils;->connectToSSIDIfAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public connectToSSIDIfAvailable(Ljava/lang/String;)Z
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 100
    if-nez p1, :cond_1

    .line 101
    const-string v4, "WifiUtils"

    const-string v5, "Trying to connect to a null ssid !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/controller/utils/WifiUtils;->getCurrentWifiSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "WifiUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Already on requested SSID ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 108
    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "wifis":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .line 115
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 118
    .local v0, "found":Z
    if-eqz v3, :cond_5

    .line 119
    const-string v5, "WifiUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Searching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in list of known wifis"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 121
    .local v1, "res":Landroid/net/wifi/WifiConfiguration;
    const-string v6, "WifiUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comparing to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    iget-object v5, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 124
    const-string v5, "WifiUtils"

    const-string v6, "Match !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    .line 126
    if-nez v2, :cond_4

    .line 127
    const-string v4, "WifiUtils"

    const-string v5, "Unable to enable wifi network"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    const/4 v0, 0x1

    .line 134
    .end local v1    # "res":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    if-nez v0, :cond_0

    .line 135
    const-string v4, "WifiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in the list of known wifis"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public forgetNetwork(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.CHANGE_WIFI_STATE"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const-string v3, "WifiUtils"

    const-string/jumbo v4, "trying to forget an empty ssid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return v2

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v0, :cond_1

    .line 44
    const-string v3, "WifiUtils"

    const-string v4, "No configured network to forget"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 49
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/parrot/controller/utils/WifiUtils;->getCurrentWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    iget-object v3, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 54
    :cond_3
    const-string v3, "WifiUtils"

    const-string v4, "Found wifi to remove"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v3, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    iget-object v2, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 58
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    :cond_4
    const-string v3, "WifiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not remove network with given SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v1    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const-string v3, "WifiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No wifi to remove matching given SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCurrentWifiSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    .line 142
    const-string v2, "WifiUtils"

    const-string v3, "getCurrentWifiSSID: WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-object v1

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 148
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_1

    .line 149
    const-string v2, "WifiUtils"

    const-string v3, "getCurrentWifiSSID: WifiInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWifiRssi()I
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 159
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 163
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/parrot/controller/utils/WifiUtils;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 169
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 173
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    return v1
.end method
