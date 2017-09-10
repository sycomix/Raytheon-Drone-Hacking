.class public Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;
.super Ljava/lang/Object;
.source "ARNetworkALManager.java"


# static fields
.field public static ARNETWORKAL_MANAGER_BLE_ID_MAX:I = 0x0

.field public static ARNETWORKAL_MANAGER_DEFAULT_ID_MAX:I = 0x0

.field public static ARNETWORKAL_MANAGER_WIFI_ID_MAX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ARNetworkALManager"


# instance fields
.field private m_initOk:Z

.field private m_managerPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_DEFAULT_ID_MAX:I

    .line 51
    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    .line 52
    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    .line 84
    invoke-static {}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeGetDefineDefaultIdMAX()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_DEFAULT_ID_MAX:I

    .line 85
    invoke-static {}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeGetDefineWifiIdMAX()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_WIFI_ID_MAX:I

    .line 86
    invoke-static {}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeGetDefineBleIdMAX()I

    move-result v0

    sput v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_initOk:Z

    .line 95
    invoke-direct {p0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeNew()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    .line 97
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_initOk:Z

    .line 101
    :cond_0
    return-void
.end method

.method private native nativeCancelBLENetwork(J)I
.end method

.method private native nativeCloseBLENetwork(J)I
.end method

.method private native nativeCloseMuxNetwork(J)I
.end method

.method private native nativeCloseWifiNetwork(J)I
.end method

.method private native nativeDelete(J)I
.end method

.method private native nativeDumpData(JBJII)I
.end method

.method private native nativeEnableDataDump(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetDefineBleIdMAX()I
.end method

.method private static native nativeGetDefineDefaultIdMAX()I
.end method

.method private static native nativeGetDefineWifiIdMAX()I
.end method

.method private native nativeInitBLENetwork(JLjava/lang/Object;Landroid/bluetooth/BluetoothDevice;I[I)I
.end method

.method private native nativeInitMuxNetwork(JJ)I
.end method

.method private native nativeInitWifiNetwork(JLjava/lang/String;III)I
.end method

.method private native nativeNew()J
.end method

.method private native nativeSetRecvBufferSize(JI)I
.end method

.method private native nativeSetRecvClassSelector(JI)I
.end method

.method private native nativeSetSendBufferSize(JI)I
.end method

.method private native nativeSetSendClassSelector(JI)I
.end method

.method private native nativeUnlock(J)I
.end method


# virtual methods
.method public cancelBLENetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4

    .prologue
    .line 304
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 306
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-boolean v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_initOk:Z

    if-nez v2, :cond_0

    .line 308
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 311
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 314
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeCancelBLENetwork(J)I

    move-result v1

    .line 315
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 318
    .end local v1    # "intError":I
    :cond_1
    return-object v0
.end method

.method public closeBLENetwork(Landroid/content/Context;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 329
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    if-nez p1, :cond_0

    .line 331
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 334
    :cond_0
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v0, v2, :cond_1

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 339
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_NETWORK_TYPE:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 343
    :cond_1
    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v0, v2, :cond_2

    .line 346
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeCloseBLENetwork(J)I

    move-result v1

    .line 347
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 350
    .end local v1    # "intError":I
    :cond_2
    return-object v0
.end method

.method public closeMuxNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4

    .prologue
    .line 374
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 375
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeCloseMuxNetwork(J)I

    move-result v1

    .line 376
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 377
    return-object v0
.end method

.method public closeWifiNetwork()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4

    .prologue
    .line 181
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 182
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeCloseWifiNetwork(J)I

    move-result v1

    .line 183
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_initOk:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v0, v1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeDelete(J)I

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_initOk:Z

    .line 114
    :cond_0
    return-void
.end method

.method public dumpData(Lcom/parrot/arsdk/arsal/ARNativeData;B)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 2
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "tag"    # B

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v0

    .line 248
    .local v0, "size":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dumpData(Lcom/parrot/arsdk/arsal/ARNativeData;IB)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v1

    return-object v1
.end method

.method public dumpData(Lcom/parrot/arsdk/arsal/ARNativeData;IB)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 10
    .param p1, "data"    # Lcom/parrot/arsdk/arsal/ARNativeData;
    .param p2, "maxSize"    # I
    .param p3, "tag"    # B

    .prologue
    .line 256
    sget-object v8, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 257
    .local v8, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getDataSize()I

    move-result v6

    .line 258
    .local v6, "totalsize":I
    if-ge p2, v6, :cond_0

    move v7, p2

    .line 259
    .local v7, "dumpsize":I
    :goto_0
    iget-wide v1, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARNativeData;->getData()J

    move-result-wide v4

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeDumpData(JBJII)I

    move-result v9

    .line 260
    .local v9, "intError":I
    invoke-static {v9}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v8

    .line 261
    return-object v8

    .end local v7    # "dumpsize":I
    .end local v9    # "intError":I
    :cond_0
    move v7, v6

    .line 258
    goto :goto_0
.end method

.method public enableDataDump(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4
    .param p1, "logDir"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 237
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeEnableDataDump(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 238
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 239
    return-object v0
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 382
    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManager()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    return-wide v0
.end method

.method public initBLENetwork(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I[I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "recvTimeoutSec"    # I
    .param p4, "notificationIDArray"    # [I

    .prologue
    .line 269
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 272
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    if-nez p1, :cond_0

    .line 274
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_BAD_PARAMETER:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 277
    :cond_0
    sget-object v1, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v0, v1, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 282
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR_NETWORK_TYPE:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 286
    :cond_1
    sget-object v1, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_OK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    if-ne v0, v1, :cond_2

    .line 292
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeInitBLENetwork(JLjava/lang/Object;Landroid/bluetooth/BluetoothDevice;I[I)I

    move-result v8

    .line 293
    .local v8, "intError":I
    invoke-static {v8}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 296
    .end local v8    # "intError":I
    :cond_2
    return-object v0
.end method

.method public initMuxNetwork(Lcom/parrot/mux/Mux;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 8
    .param p1, "mux"    # Lcom/parrot/mux/Mux;

    .prologue
    .line 358
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 359
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p1}, Lcom/parrot/mux/Mux;->newMuxRef()Lcom/parrot/mux/Mux$Ref;

    move-result-object v2

    .line 362
    .local v2, "muxref":Lcom/parrot/mux/Mux$Ref;
    iget-wide v4, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-virtual {v2}, Lcom/parrot/mux/Mux$Ref;->getCPtr()J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeInitMuxNetwork(JJ)I

    move-result v1

    .line 363
    .local v1, "intError":I
    invoke-virtual {v2}, Lcom/parrot/mux/Mux$Ref;->release()V

    .line 364
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 366
    .end local v1    # "intError":I
    .end local v2    # "muxref":Lcom/parrot/mux/Mux$Ref;
    :cond_0
    return-object v0
.end method

.method public initWifiNetwork(Ljava/lang/String;III)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 9
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "sendingPort"    # I
    .param p3, "receivingPort"    # I
    .param p4, "recvTimeoutSec"    # I

    .prologue
    .line 154
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 156
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    if-eqz p1, :cond_0

    .line 158
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeInitWifiNetwork(JLjava/lang/String;III)I

    move-result v8

    .line 159
    .local v8, "intError":I
    invoke-static {v8}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 162
    .end local v8    # "intError":I
    :cond_0
    return-object v0
.end method

.method public isCorrectlyInitialized()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_initOk:Z

    return v0
.end method

.method public setRecvBufferSize(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4
    .param p1, "bufferSize"    # I

    .prologue
    .line 203
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 204
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeSetRecvBufferSize(JI)I

    move-result v1

    .line 205
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 206
    return-object v0
.end method

.method public setRecvClassSelector(Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 5
    .param p1, "cs"    # Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    .prologue
    .line 225
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 226
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->getValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeSetRecvClassSelector(JI)I

    move-result v1

    .line 227
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method public setSendBufferSize(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4
    .param p1, "bufferSize"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 193
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3, p1}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeSetSendBufferSize(JI)I

    move-result v1

    .line 194
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public setSendClassSelector(Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 5
    .param p1, "cs"    # Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;

    .prologue
    .line 214
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 215
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-virtual {p1}, Lcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;->getValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeSetSendClassSelector(JI)I

    move-result v1

    .line 216
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public unlock()Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    .locals 4

    .prologue
    .line 170
    sget-object v0, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->ARNETWORKAL_ERROR:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    .line 171
    .local v0, "error":Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;
    iget-wide v2, p0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->m_managerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->nativeUnlock(J)I

    move-result v1

    .line 172
    .local v1, "intError":I
    invoke-static {v1}, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_ERROR_ENUM;

    move-result-object v0

    .line 173
    return-object v0
.end method
