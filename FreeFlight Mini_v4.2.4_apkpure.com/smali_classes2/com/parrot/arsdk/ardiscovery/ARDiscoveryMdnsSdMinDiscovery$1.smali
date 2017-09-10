.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;
.super Landroid/content/BroadcastReceiver;
.source "ARDiscoveryMdnsSdMinDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 163
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Receive CONNECTIVITY_ACTION intent, extras are :"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 165
    .local v5, "extras":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 166
    .local v12, "key":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v23

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Key : "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, ", value = "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v21, "NULL"

    goto :goto_1

    .line 168
    .end local v12    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "End of extras"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v21, "noConnectivity"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 171
    .local v15, "needFlush":Z
    if-eqz v15, :cond_2

    .line 173
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Extra noConnectivity set to true, need flush"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    const-string v21, "networkInfo"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/NetworkInfo;

    .line 176
    .local v16, "netInfos":Landroid/net/NetworkInfo;
    if-eqz v16, :cond_3

    .line 178
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v18

    .line 179
    .local v18, "state":Landroid/net/NetworkInfo$State;
    sget-object v21, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 181
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "NetworkInfo.State is DISCONNECTED, need flush"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v15, 0x1

    .line 187
    .end local v18    # "state":Landroid/net/NetworkInfo$State;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->stop()V

    .line 189
    const-string v21, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 190
    .local v3, "connManager":Landroid/net/ConnectivityManager;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 191
    .local v14, "mWifi":Landroid/net/NetworkInfo;
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 193
    .local v13, "mEth":Landroid/net/NetworkInfo;
    const/16 v17, 0x0

    .line 195
    .local v17, "netInterface":Ljava/net/NetworkInterface;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 197
    const-string v21, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiManager;

    .line 198
    .local v20, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v20, :cond_6

    .line 199
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    .line 200
    .local v19, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    .line 201
    .local v11, "ipAddressInt":I
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v22, "%d.%d.%d.%d"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    and-int/lit16 v0, v11, 0xff

    move/from16 v25, v0

    .line 202
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    shr-int/lit8 v25, v11, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    shr-int/lit8 v25, v11, 0x10

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 203
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    shr-int/lit8 v25, v11, 0x18

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    .line 201
    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "ipAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 207
    .local v2, "addr":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    .line 208
    .local v9, "intfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    if-nez v17, :cond_6

    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 210
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .line 211
    .local v8, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    .line 212
    .local v7, "interfaceAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_5
    :goto_2
    if-nez v17, :cond_4

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 214
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 215
    .local v6, "interfaceAddr":Ljava/net/InetAddress;
    invoke-virtual {v6, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-eqz v21, :cond_5

    .line 217
    move-object/from16 v17, v8

    goto :goto_2

    .line 222
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v6    # "interfaceAddr":Ljava/net/InetAddress;
    .end local v7    # "interfaceAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v8    # "intf":Ljava/net/NetworkInterface;
    .end local v9    # "intfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v4

    .line 224
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Unable to get the wifi network interface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "ipAddress":Ljava/lang/String;
    .end local v11    # "ipAddressInt":I
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v20    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-nez v21, :cond_8

    :cond_7
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 233
    :cond_8
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Restaring MdsnSd"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSdMin;->start(Ljava/net/NetworkInterface;)V

    .line 242
    :goto_3
    if-eqz v15, :cond_9

    .line 244
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Clearing devices list"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$300(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->broadcastDeviceServiceArrayUpdated()V

    .line 249
    .end local v3    # "connManager":Landroid/net/ConnectivityManager;
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v13    # "mEth":Landroid/net/NetworkInfo;
    .end local v14    # "mWifi":Landroid/net/NetworkInfo;
    .end local v15    # "needFlush":Z
    .end local v16    # "netInfos":Landroid/net/NetworkInfo;
    .end local v17    # "netInterface":Ljava/net/NetworkInterface;
    :cond_9
    return-void

    .line 238
    .restart local v3    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v5    # "extras":Landroid/os/Bundle;
    .restart local v13    # "mEth":Landroid/net/NetworkInfo;
    .restart local v14    # "mWifi":Landroid/net/NetworkInfo;
    .restart local v15    # "needFlush":Z
    .restart local v16    # "netInfos":Landroid/net/NetworkInfo;
    .restart local v17    # "netInterface":Ljava/net/NetworkInterface;
    :cond_a
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Not connected to either wifi or ethernet, need flush list"

    invoke-static/range {v21 .. v22}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v15, 0x1

    goto :goto_3
.end method
