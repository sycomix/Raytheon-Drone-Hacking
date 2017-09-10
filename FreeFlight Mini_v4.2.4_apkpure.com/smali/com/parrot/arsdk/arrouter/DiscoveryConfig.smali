.class public Lcom/parrot/arsdk/arrouter/DiscoveryConfig;
.super Ljava/lang/Object;
.source "DiscoveryConfig.java"


# static fields
.field private static final ARSTREAM2_BITRATE_KEY:Ljava/lang/String; = "arSteam2Bitrate"

.field private static final ARSTREAM2_MAX_LATENCY_KEY:Ljava/lang/String; = "arSteam2MaxLatency"

.field private static final ARSTREAM2_MAX_NETWORK_LATENCY_KEY:Ljava/lang/String; = "arSteam2MaxNetworkLatency"

.field private static final ARSTREAM2_MAX_PACKET_SIZE_KEY:Ljava/lang/String; = "arSteam2MaxPacketSize"

.field private static final ARSTREAM2_PARAM_SET:Ljava/lang/String; = "arSteam2ParamSet"

.field private static final ARSTREAM2_SUPPORTED:Ljava/lang/String; = "arSteam2Supported"

.field private static final ARSTREAM_FRAGMENT_SIZE_KEY:Ljava/lang/String; = "arSteamFragmentSize"

.field private static final ARSTREAM_MAX_FRAGMENT_NR_KEY:Ljava/lang/String; = "arSteamMaxFragmentNr"

.field private static final DEFAULT_ARSTREAM_FRAGMENT_SIZE:I = 0x3e8

.field private static final DEFAULT_ARSTREAM_MAX_FRAGMENT_NB:I = 0x80

.field private static final PREF_NAME:Ljava/lang/String; = "discoveryConfig"


# instance fields
.field private arStream2Bitrate:I

.field private arStream2MaxLatency:I

.field private arStream2MaxNetworkLatency:I

.field private arStream2MaxPacketSize:I

.field private arStream2ParamSet:Ljava/lang/String;

.field private arStream2Supported:Z

.field private arStreamFragmentSize:I

.field private arStreamMaxFragmentNb:I

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->load()V

    .line 45
    return-void
.end method

.method private load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 118
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->context:Landroid/content/Context;

    const-string v2, "discoveryConfig"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "arSteamFragmentSize"

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamFragmentSize:I

    .line 120
    const-string v1, "arSteamMaxFragmentNr"

    const/16 v2, 0x80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamMaxFragmentNb:I

    .line 121
    const-string v1, "arSteam2Supported"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Supported:Z

    .line 122
    const-string v1, "arSteam2MaxPacketSize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxPacketSize:I

    .line 123
    const-string v1, "arSteam2MaxLatency"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxLatency:I

    .line 124
    const-string v1, "arSteam2MaxNetworkLatency"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxNetworkLatency:I

    .line 125
    const-string v1, "arSteam2Bitrate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Bitrate:I

    .line 126
    const-string v1, "arSteam2ParamSet"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2ParamSet:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private save()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->context:Landroid/content/Context;

    const-string v3, "discoveryConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "arSteamFragmentSize"

    iget v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamFragmentSize:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v2, "arSteamMaxFragmentNr"

    iget v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamMaxFragmentNb:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v2, "arSteam2Supported"

    iget-boolean v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Supported:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v2, "arSteam2MaxPacketSize"

    iget v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxPacketSize:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v2, "arSteam2MaxLatency"

    iget v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxLatency:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v2, "arSteam2MaxNetworkLatency"

    iget v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxNetworkLatency:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v2, "arSteam2Bitrate"

    iget v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Bitrate:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v2, "arSteam2ParamSet"

    iget-object v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2ParamSet:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method


# virtual methods
.method public getARStream2Bitrate()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Bitrate:I

    return v0
.end method

.method public getARStream2MaxLatency()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxLatency:I

    return v0
.end method

.method public getARStream2MaxNetworkLatency()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxNetworkLatency:I

    return v0
.end method

.method public getARStream2MaxPacketSize()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxPacketSize:I

    return v0
.end method

.method public getARStream2ParamSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2ParamSet:Ljava/lang/String;

    return-object v0
.end method

.method public getARStreamFragmentSize()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamFragmentSize:I

    return v0
.end method

.method public getARStreamMaxFragmentNb()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamMaxFragmentNb:I

    return v0
.end method

.method public hasARStream2Info()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Supported:Z

    return v0
.end method

.method public updateFrom(Lorg/json/JSONObject;)Z
    .locals 13
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 89
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_SIZE_KEY:Ljava/lang/String;

    const/16 v11, 0x3e8

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 90
    .local v6, "newARStreamFragmentSize":I
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_MAXIMUM_NUMBER_KEY:Ljava/lang/String;

    const/16 v11, 0x80

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 91
    .local v7, "newARStreamMaxFragmentNb":I
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_CONTROL_PORT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v12, :cond_2

    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_STREAM_PORT_KEY:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v12, :cond_2

    move v5, v8

    .line 93
    .local v5, "newARStream2Supported":Z
    :goto_0
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_PACKET_SIZE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, "newARStream2MaxPacketSize":I
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_LATENCY_KEY:Ljava/lang/String;

    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, "newARStream2MaxLatency":I
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_NETWORK_LATENCY_KEY:Ljava/lang/String;

    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 96
    .local v2, "newARStream2MaxNetworkLatency":I
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_BITRATE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, "newARStream2Bitrate":I
    sget-object v10, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_PARAMETER_SETS_KEY:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {p1, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "newARStream2ParamSet":Ljava/lang/String;
    iget v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamFragmentSize:I

    if-ne v6, v10, :cond_0

    iget v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamMaxFragmentNb:I

    if-ne v7, v10, :cond_0

    iget v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxPacketSize:I

    if-ne v3, v10, :cond_0

    iget v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxLatency:I

    if-ne v1, v10, :cond_0

    iget v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxNetworkLatency:I

    if-ne v2, v10, :cond_0

    iget v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Bitrate:I

    if-ne v0, v10, :cond_0

    iget-object v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2ParamSet:Ljava/lang/String;

    .line 100
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Supported:Z

    if-eq v5, v10, :cond_1

    .line 102
    :cond_0
    iput v6, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamFragmentSize:I

    .line 103
    iput v7, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStreamMaxFragmentNb:I

    .line 104
    iput-boolean v5, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Supported:Z

    .line 105
    iput v3, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxPacketSize:I

    .line 106
    iput v1, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxLatency:I

    .line 107
    iput v2, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2MaxNetworkLatency:I

    .line 108
    iput v0, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2Bitrate:I

    .line 109
    iput-object v4, p0, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->arStream2ParamSet:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/parrot/arsdk/arrouter/DiscoveryConfig;->save()V

    move v9, v8

    .line 113
    :cond_1
    return v9

    .end local v0    # "newARStream2Bitrate":I
    .end local v1    # "newARStream2MaxLatency":I
    .end local v2    # "newARStream2MaxNetworkLatency":I
    .end local v3    # "newARStream2MaxPacketSize":I
    .end local v4    # "newARStream2ParamSet":Ljava/lang/String;
    .end local v5    # "newARStream2Supported":Z
    :cond_2
    move v5, v9

    .line 92
    goto :goto_0
.end method
