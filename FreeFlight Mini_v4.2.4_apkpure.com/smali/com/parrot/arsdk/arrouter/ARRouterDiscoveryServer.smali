.class public Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;
.super Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
.source "ARRouterDiscoveryServer.java"


# static fields
.field public static final ARSTREAM2_ROUTER_SERVER_CONTROL_PORT:I = 0x138d

.field public static final ARSTREAM2_ROUTER_SERVER_STREAM_PORT:I = 0x138c

.field private static final TAG:Ljava/lang/String;

.field private static final arStreamMaxAckInterval:I = -0x1

.field private static final tabletToRouterPort:I = 0x8a54


# instance fields
.field private arstream2TabletControlPort:I

.field private arstream2TabletStreamPort:I

.field private final discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

.field private discoveryThread:Ljava/lang/Thread;

.field private final router:Lcom/parrot/arsdk/arrouter/ARRouter;

.field private routerToTabletPort:I

.field private started:Z

.field private tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

.field private tabletIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/arrouter/ARRouter;)V
    .locals 2
    .param p1, "router"    # Lcom/parrot/arsdk/arrouter/ARRouter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;-><init>()V

    .line 21
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 32
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    .line 33
    new-instance v0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {p1}, Lcom/parrot/arsdk/arrouter/ARRouter;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDiscoveryConfig()Lcom/parrot/arsdk/arrouter/DiscoveryConfig;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    return-object v0
.end method

.method protected final onReceiveJson(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 7
    .param p1, "dataRx"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v4, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    const-string v5, "onReceiveJson"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object p2, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletIp:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 134
    .local v1, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    const/4 v3, 0x0

    .line 139
    .local v3, "tabletConnectionID":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "jsonObject":Lorg/json/JSONObject;
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    iget v5, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->routerToTabletPort:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->routerToTabletPort:I

    .line 141
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_STREAM_PORT_KEY:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->arstream2TabletStreamPort:I

    .line 143
    sget-object v4, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_CONTROL_PORT_KEY:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->arstream2TabletControlPort:I

    .line 144
    sget-object v4, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    invoke-virtual {v4, v3}, Lcom/parrot/arsdk/arrouter/ARRouter;->shouldAcceptTabletConnection(Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 153
    sget-object v4, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tabletConnectionStatus ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 149
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    goto :goto_0
.end method

.method protected final onSendJson()Ljava/lang/String;
    .locals 8

    .prologue
    .line 83
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    const-string v1, "On send json !"

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v0, v1, :cond_2

    .line 91
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    const v1, 0x8a54

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    :goto_0
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_SIZE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStreamFragmentSize()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_MAXIMUM_NUMBER_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStreamMaxFragmentNb()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_MAX_ACK_INTERVAL_KEY:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_SKYCONTROLLER_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->hasARStream2Info()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_STREAM_PORT_KEY:Ljava/lang/String;

    const/16 v1, 0x138c

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_CONTROL_PORT_KEY:Ljava/lang/String;

    const/16 v1, 0x138d

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_PACKET_SIZE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStream2MaxPacketSize()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_LATENCY_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStream2MaxLatency()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_NETWORK_LATENCY_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStream2MaxNetworkLatency()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_BITRATE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStream2Bitrate()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_PARAMETER_SETS_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryConfig:Lcom/parrot/arsdk/arrouter/DiscoveryConfig;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->getARStream2ParamSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletConnectionStatus:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->router:Lcom/parrot/arsdk/arrouter/ARRouter;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->tabletIp:Ljava/lang/String;

    iget v2, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->routerToTabletPort:I

    const v3, 0x8a54

    iget v4, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->arstream2TabletStreamPort:I

    iget v5, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->arstream2TabletControlPort:I

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/arsdk/arrouter/ARRouter;->connectToTablet(Ljava/lang/String;IIII)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :goto_1
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    :try_start_1
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v6

    .line 121
    .local v6, "jse":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized start(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    const-string v1, "start ..."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->TAG:Ljava/lang/String;

    const-string v1, "new discoveryThread ..."

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arsal/ARSALPrint;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer$1;-><init>(Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryThread:Ljava/lang/Thread;

    .line 58
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->DeviceStopListening()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->discoveryThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/ARRouterDiscoveryServer;->started:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
