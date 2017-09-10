.class public abstract Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;
.super Ljava/lang/Object;
.source "ARDiscoveryConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;
    }
.end annotation


# static fields
.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_CONTROL_PORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_STREAM_PORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_BITRATE_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_LATENCY_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_NETWORK_LATENCY_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_PACKET_SIZE_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_PARAMETER_SETS_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_CONTROL_PORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_STREAM_PORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SUPPORTED_METADATA_VERSION_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_MAXIMUM_NUMBER_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_SIZE_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_ARSTREAM_MAX_ACK_INTERVAL_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_AUDIO_CODEC_VERSION_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_C2D_UPDATE_PORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_C2D_USER_PORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_CONTROLLER_NAME_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_CONTROLLER_TYPE_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_FEATURES_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_QOS_MODE_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_SKYCONTROLLER_VERSION:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

.field public static final ARDISCOVERY_CONNECTION_SEND_JSON_SIZE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private initOk:Z

.field private nativeARDiscoveryConnection:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "ARDiscoveryConnection"

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->TAG:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeStaticInit()V

    .line 128
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonStatusKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_STATUS_KEY:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonC2DPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2DPORT_KEY:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonD2CPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_D2CPORT_KEY:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStreamFragmentSizeKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_SIZE_KEY:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStreamFragmentMaximumNumberKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_FRAGMENT_MAXIMUM_NUMBER_KEY:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStreamMaxAckIntervalKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM_MAX_ACK_INTERVAL_KEY:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonControllerTypeKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_CONTROLLER_TYPE_KEY:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonControllerNameKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_CONTROLLER_NAME_KEY:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonDeviceNameIdKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_DEVICE_ID_KEY:Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonC2DUpdatePortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2D_UPDATE_PORT_KEY:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonC2DUserPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_C2D_USER_PORT_KEY:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonSkyControllerVersionKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_SKYCONTROLLER_VERSION:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonFeaturesKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_FEATURES_KEY:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonQosModeKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_QOS_MODE_KEY:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2ClientStreamPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_STREAM_PORT_KEY:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2ClientControlPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_CLIENT_CONTROL_PORT_KEY:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2ServerStreamPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_STREAM_PORT_KEY:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2ServerControlPortKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SERVER_CONTROL_PORT_KEY:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2MaxPacketSizeKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_PACKET_SIZE_KEY:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2MaxLatencyKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_LATENCY_KEY:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2MaxNetworkLatencyKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_NETWORK_LATENCY_KEY:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2MaxBitrateKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_MAX_BITRATE_KEY:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2SupportedMetadataVersionKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_SUPPORTED_METADATA_VERSION_KEY:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonARStream2ParameterSetsKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_ARSTREAM2_PARAMETER_SETS_KEY:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineJsonAudioCodecVersionKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_JSON_AUDIO_CODEC_VERSION_KEY:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeGetDefineTxBufferSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->ARDISCOVERY_CONNECTION_SEND_JSON_SIZE:I

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    .line 162
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    .line 163
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    .line 167
    :cond_0
    return-void
.end method

.method private native nativeControllerConnection(JILjava/lang/String;)I
.end method

.method private native nativeControllerConnectionAbort(J)V
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeDeviceListeningLoop(JI)I
.end method

.method private native nativeDeviceStopListening(J)I
.end method

.method private static native nativeGetDefineJsonARStream2ClientControlPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2ClientStreamPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2MaxBitrateKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2MaxLatencyKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2MaxNetworkLatencyKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2MaxPacketSizeKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2ParameterSetsKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2ServerControlPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2ServerStreamPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStream2SupportedMetadataVersionKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStreamFragmentMaximumNumberKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStreamFragmentSizeKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonARStreamMaxAckIntervalKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonAudioCodecVersionKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonC2DPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonC2DUpdatePortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonC2DUserPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonControllerNameKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonControllerTypeKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonD2CPortKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonDeviceNameIdKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonFeaturesKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonQosModeKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonSkyControllerVersionKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineJsonStatusKey()Ljava/lang/String;
.end method

.method private static native nativeGetDefineTxBufferSize()I
.end method

.method private native nativeNew()J
.end method

.method private static native nativeStaticInit()V
.end method

.method private receiveJsonCallback([BLjava/lang/String;)I
    .locals 5
    .param p1, "dataRx"    # [B
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 298
    .local v0, "callbackError":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    const/4 v1, 0x0

    .line 300
    .local v1, "dataRxString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 307
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "dataRxString":Ljava/lang/String;
    .local v2, "dataRxString":Ljava/lang/String;
    move-object v1, v2

    .line 315
    .end local v2    # "dataRxString":Ljava/lang/String;
    .restart local v1    # "dataRxString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->onReceiveJson(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    .line 318
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getValue()I

    move-result v4

    return v4

    .line 309
    :catch_0
    move-exception v3

    .line 311
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_ERROR:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 312
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendJsonCallback()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;
    .locals 3

    .prologue
    .line 284
    new-instance v1, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;

    invoke-direct {v1, p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;-><init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;)V

    .line 285
    .local v1, "callbackReturn":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;
    const/4 v2, 0x0

    .line 286
    .local v2, "dataTx":Ljava/lang/String;
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 289
    .local v0, "callbackError":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->onSendJson()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection$ARDiscoveryConnectionCallbackReturn;->setDataTx(Ljava/lang/String;)V

    .line 292
    return-object v1
.end method


# virtual methods
.method public ControllerConnection(ILjava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 4
    .param p1, "port"    # I
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeControllerConnection(JILjava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "nativeError":I
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public ControllerConnectionAbort()V
    .locals 2

    .prologue
    .line 228
    monitor-enter p0

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeControllerConnectionAbort(J)V

    .line 234
    :cond_0
    monitor-exit p0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public DeviceListeningLoop(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 4
    .param p1, "port"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "nativeError":I
    iget-boolean v1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 249
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeDeviceListeningLoop(JI)I

    .line 252
    :cond_0
    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public DeviceStopListening()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    iget-wide v0, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeDeviceStopListening(J)I

    .line 265
    :cond_0
    return-void
.end method

.method public dispose()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    .locals 4

    .prologue
    .line 174
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    .line 175
    .local v0, "error":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 179
    iget-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeDelete(J)I

    move-result v1

    .line 180
    .local v1, "nativeError":I
    invoke-static {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    move-result-object v0

    .line 181
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;->ARDISCOVERY_OK:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;

    if-ne v0, v2, :cond_0

    .line 183
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->nativeARDiscoveryConnection:J

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->initOk:Z

    .line 187
    .end local v1    # "nativeError":I
    :cond_0
    monitor-exit p0

    .line 189
    return-object v0

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryConnection;->dispose()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected abstract onReceiveJson(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_ERROR_ENUM;
.end method

.method protected abstract onSendJson()Ljava/lang/String;
.end method
